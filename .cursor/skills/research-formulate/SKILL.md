---
name: research-formulate
description: >-
  Sharpens a research-lab itch into a hinge question, non-question, scope, and
  working thesis. Writes Core question / thesis on the thread snapshot and
  appends log.md. Use when formulating, sharpening, or scoping a question, when
  Core question is empty, or when the user asks what the real question is. Do
  not use for literature search, mapping tables, or drafting the argument.
---

# Research formulate

Sharpen the question. Do not search. Do not build the mapping — that is `research-think`.

## Steps

1. Read the lab index at repo root `README.md`, then the candidate thread `README.md` (and `notes/` titles if present).
2. Stay in an existing folder if the itch belongs there. Propose a new folder only if it would otherwise merge unrelated threads. Do not create a folder until the user agrees, unless they already asked to start a new thread.
3. Fill the output template below. A working thesis may be empty. Empty `Core question / thesis` on the snapshot means formulate — do not invent a thesis to look finished.
4. Write the snapshot: `Core question / thesis` (one or two sentences), `Open threads` if they shifted, `Status` if it changed. Rewrite current state; do not append a diary.
5. Append today's date heading to `log.md` if missing, then one or two bullets. Never edit old log entries.
6. Stop. Offer `research-think` next (mapping) or `research-deep` only if the user wants a novelty check before thinking.

No web search, no `perplexity-search`, no `refs.md` edits.

## Output

```markdown
## Hinge
One sentence. The question that does actual work.

## Not the question
What this is easy to confuse with, and why that is the wrong grain.

## Working thesis
May be empty. Claim only what the itch already supports.

## Scope
blog | paper | open thread — and why.

## Novelty grain
- Psychological: new combination of a basis this lab already has.
- Logical: may need a new basis vector (new thread or an expansion exit).

## Thread
Folder to use, or proposed name. Related threads to link, not merge.

## Next
think | deep-research — default think.
```

## New thread scaffold

If creating a folder, match existing ideas: `README.md` (snapshot with Status / Core question / Open threads), `log.md` (append-only), `refs.md` (informal sources stub), `scratch/.gitkeep`. Add a row to the lab index. Link siblings in `Related threads` instead of copying their argument.

## Example

Itch: “logical vs psychological novelty.”

- **Hinge:** Psychological novelty is a new coefficient on a fixed basis; logical novelty is a new basis vector.
- **Not the question:** A substance dualism of “rules vs feelings.”
- **Scope:** blog, not a paper claim.
- **Novelty grain:** synthesis of known pieces (psychological); group-level minimization is the open logical-grain thread → `licensing-collective-selves`, linked not merged.
