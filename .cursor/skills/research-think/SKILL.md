---
name: research-think
description: >-
  Develops a research-lab mapping through dialectic: table, analogues across
  domains, mechanism, honest scope, open objections. Rewrites the thread
  snapshot, appends log.md, and extends notes. Use when thinking through a
  claim, building the mapping, steelmanning, or asking what the mechanism is.
  Do not use for formulating the hinge question or for literature search.
---

# Research think

Work the mapping. Do not search. If `Core question / thesis` is empty, stop and run `research-formulate` first.

## Steps

1. Read the thread `README.md`, `log.md` tail, and existing `notes/` (prefer a condensed note over the full trail if both exist).
2. Fill the output template. Analogues must be the same shape in a different room, not name-dropping. Honest scope says what is *not* new and what the synthesis actually is.
3. Rewrite the snapshot as current state: `Core question / thesis`, `Open threads`, optional `Related threads` (link, do not merge). No diary entries.
4. Put the durable mapping in `notes/`: update the condensed note if there is one; otherwise append to `notes/research-thread.md` or create a named note. Do not dump the mapping into `log.md` or `refs.md`.
5. Append today's date heading to `log.md` if missing, then one or two bullets on what shifted. Never edit old log entries.
6. Diagram only when the mapping is visual (basis/coefficient, two exits). Keep the record in markdown; do not substitute a figure for the table. Follow the visualize skill if drawing in-transcript.
7. Stop. Offer `research-deep` to check novelty, or `research-formulate` if the hinge moved.

No web search, no `perplexity-search`, no `refs.md` edits.

## Output

```markdown
## Mapping
Table or compact pairs. Each row is a role, not a metaphor.

## Analogues
Same shape, other rooms. Drop any analogue that only shares vocabulary.

## Mechanism
The process that produces the rows (e.g. two exits of one minimization). Loop, not hierarchy, unless hierarchy is the claim.

## Honest scope
What is already in the literature vs what this synthesis is doing. Match stated scope (blog vs paper).

## Objections
Steelman the best attack. What would falsify the mapping.

## Open
What does not fit; whether it belongs in this folder or a linked thread.
```

## Example

Hinge already formulated: logical vs psychological novelty.

- **Mapping:** logical = basis (cheap, regenerates); psychological = coefficient (expensive, context-bound).
- **Analogues:** transformer weights vs attention; sparse-coding dictionary vs activations; Hopfield attractors vs current state.
- **Mechanism:** one compression process, two exits — reweight (psychological) or expand the basis (logical).
- **Honest scope:** pieces are old; the contribution is the synthesis, positioned as a blog post.
- **Open:** group-level minimization → `licensing-collective-selves`, not this snapshot.
