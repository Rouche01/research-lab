import subprocess
import os
import re
# Choose your preferred client (e.g anthropic, openai, etc.)
from openai import OpenAI

client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

SPEC_FILE = "contract.dfy"
SOLUTION_FILE = "solution.dfy"
MAX_RETRIES = 5
SYSTEM_PROMPT = (
    "You are a formal verification expert specializing in Dafny.\n"
    "Return ONLY valid Dafny code inside a markdown dafny code fence, with no commentary.\n"
    "IMPORTANT: For any while or for loops, you MUST include explicit loop invariants "
    "(invariant ...) and termination measures (decreases ...) so Dafny can verify the loop.\n"
    "STRICT RULE: Do NOT use {:axiom}, assume, or {:verify false} to bypass verification.\n"
)

def run_dafny_verify(filename: str) -> tuple[bool, str]:
    """Runs dafny verify on a file and returns (passed, stdout/stderr)."""
    result = subprocess.run(["dafny", "verify", filename], capture_output=True, text=True)
    # Success line lands on stdout (stderr is empty on a clean verify).
    output = (result.stdout or "") + (result.stderr or "")
    passed = result.returncode == 0 and "0 errors" in output
    return passed, output

def prompt_llm(prompt_text: str) -> str:
    """Queries the LLM for Dafny implementation code."""
    response = client.chat.completions.create(
        model="gpt-4o",
        messages=[
            {
                "role": "system", 
                "content": SYSTEM_PROMPT
            },
            {
                "role": "user",
                "content": prompt_text
            }
        ],
        temperature=0.2
    )
    return response.choices[0].message.content

def extract_dafny_code(llm_output: str) -> str:
    """Extracts raw code from markdown code fences."""
    if not llm_output:
        return ""
    match = re.search(r"```(?:dafny)?\s*\n(.*?)```", llm_output, re.DOTALL)
    if match:
        return match.group(1).strip()
    return llm_output.replace("```dafny", "").replace("```", "").strip()

def main():
    if not os.path.exists(SPEC_FILE):
        print(f"Error: {SPEC_FILE} not found")
        return
    with open(SPEC_FILE, "r") as f:
        spec_content = f.read()

    current_prompt = (
        f"Complete the following Dafny specification with a working implemenation body.\n" 
        f"Do not change the method signature or contracts:\n\n{spec_content}"
    )

    print("🚀 Starting Vericoding Loop...\n")

    for attempt in range(1, MAX_RETRIES + 1):
        print(f"--- Attempt {attempt}/{MAX_RETRIES}")
        print("🤖 Prompting LLM...")
        raw_response = prompt_llm(current_prompt)
        print("✅ LLM response received.")
        print("🔍 Extracting code...")
        dafny_code = extract_dafny_code(raw_response)

        # Write generated code to solution.dfy
        with open(SOLUTION_FILE, "w") as f:
            f.write(dafny_code)

        # Run verification
        print("🔍 Running Dafny verifier...")
        passed, dafny_output = run_dafny_verify(SOLUTION_FILE)
        print("🎉 Verification complete!")

        if passed:
            print("🎉 Success! The generated code passed verification.")
            print("🔍 Dafny output:\n", dafny_code)
            print("=" * 40)
            return
        else:
            print("❌ Verification failed. LLM may need to be prompted again.")
            print(f"Dafny Compiler Trace:\n{dafny_output}\n")
            # Build feedback prompt with compiler output
            current_prompt = (
                f"Your previous Dafny code failed verification with these errors:\n\n"
                f"{dafny_output}\n\n"
                f"Here was your code:\n\n{dafny_code}\n\n"
                f"Fix the implementation and loop invariants so that Dafny verification passes."
            )
        
    print("\\n💥 Max retries reached without successful proof.")

if __name__ == "__main__":
    main()