# Log — spec-owned vericoding

Dated, running journal. Append, don't edit history.

## 2026-10-06

- Opened thread from a Cursor conversation: AI can write code faster than humans can read diffs → should we invent languages optimized for that?
- Clarified: not “gibberish AI bytecode,” but disposable bodies behind human-owned specs/laws/proofs; structured IR over mush; low-level helps runtime, often hurts verification.
- Landscape skimmed (no repo work yet): Aver, Bend, RIINA, Djinnlang (paper, no public repo), WybeCoder, Autofy, vericoding benchmarks. Philosophical closest = Djinnlang; open closest = Bend; Aver = reviewable mid-lang + WASM/Rust.
- Formulated hinge: human-owned surface + checkable mid-IR for regenerable bodies, not “as low-level as possible.”
- Added [notes/tycs-study-track.md](./notes/tycs-study-track.md): TYCS → this thread curriculum (compilers + discrete math + Dafny first; OS/net/DB/distributed deferred). Next personal step: mark “Where you are” and continue Phase A unless already past interpreters.
- Clarified path: studying via **CS Primer**; rewritten study track around Primer courses. Critical gaps to side-load: *Crafting Interpreters* + discrete proofs + Dafny (no full compilers course on Primer’s public catalog yet).
- Linked **Relay OS**: intent→manifest self-orchestration wants throwaway generated bodies; human surface = intent + manifest + HITL, not the glue code. Near-term = sandbox/capabilities; formal vericoding = later for high-stakes stages.

## 2026-10-09

- Opt-in NotebookLM as a **reading room** for this thread only (not one notebook per lab idea by default). Lab folder stays source of truth; notebook = Q&A over sources.
- Added [notes/notebooklm-hinge.md](./notes/notebooklm-hinge.md) + Reading room stub in `refs.md`. Seed create with Djinnlang arXiv URL; paste hinge after; drop notebook URL back into `refs.md` when you have it.

## 2026-10-10

- Started Dafny practice under [scratch/dafny-explore/](./scratch/dafny-explore/): `contract.dfy` as human-owned spec, `dafny_runner.py` as LLM → extract → `dafny verify` retry loop, local `.venv` + `requirements.txt`.
- Runner gotchas logged in code: success line is on stdout (not stderr); stub bodies need `expect false` / `assume {:axiom} false` (empty `{}` fails postconditions); system prompt forbids axiom/assume bypasses for real practice.
- Added `scratch/dafny-explore/.gitignore` so `.venv/`, `__pycache__/`, and `.env*` stay out of git.
