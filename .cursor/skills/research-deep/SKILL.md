---
name: research-deep
description: >-
  Checks a research-lab claim against prior art via perplexity-search. Appends
  refs.md with a supports/overlaps/contradicts/analogue verdict per source,
  then updates honest scope on the snapshot. Use when checking novelty, prior
  art, "is this just restating X", or gathering sources. Do not use for
  formulating the hinge or building the mapping.
---

# Research deep

Literature against the claim, not instead of it. If `Core question / thesis` is empty, stop and run `research-formulate`. Prefer a mapping from `research-think` so queries have something to test.

## Steps

1. Read the thread `README.md`, condensed `notes/` if any, and existing `refs.md`. Search only claims already on the table.
2. Call **perplexity-search** (`perplexity_search_web`, model `sonar`). Discover the tool schema first. Report `MCPs used: perplexity-search`. On failure: **Failed:** perplexity-search — do not invent citations.
3. Query the claim, not the topic. Bad: “papers on FEP.” Good: “basis vs coefficient / two-exit minimization vs predictive coding / Hamming logical vs psychological novelty.”
4. Each source earns one verdict: **supports** | **overlaps** | **contradicts** | **analogue only**. Drop anything that only shares vocabulary. Do not dump a paper list.
5. Append surviving sources to `refs.md` in this lab’s informal style (see example). Full citation only if the thread is graduating to a paper.
6. Rewrite snapshot honest-scope / `Open threads` if the claim must be weakened or kept. No diary in the snapshot.
7. Append `log.md` (today’s heading if missing, one or two bullets). Never rewrite history.
8. Stop. Offer `research-think` if the mapping needs a rewrite, or `research-formulate` if the hinge moved.

Do not write the argument into `refs.md`. Notion is not the lab of record.

## Output

```markdown
## Queries
The exact searches run.

## Verdicts
- Source — supports | overlaps | contradicts | analogue only — one line on what it does to the claim.

## Keep / weaken
What still stands as synthesis vs what is prior art. Match stated scope (blog vs paper).

## Refs to add
Informal lines ready for `refs.md`. Omit rejects.
```

## `refs.md` line

```markdown
- Richard W. Hamming, *The Art of Doing Science and Engineering* (1997). Origin of the logical vs psychological novelty distinction in this thread — machines produce psychological surprise without logical novelty.
```

Name, short title, year if known, then the job it does here. Not a bibliography dump.

## Example

Claim: two-exit minimization is a useful lens, not a new result.

- Predictive coding / FEP minimization → **overlaps** (compression; not the two-exit split).
- Model-based vs model-free RL, MDL → **supports** the efficiency cost of never expanding the basis.
- Hamming novelty distinction → **supports** the hinge; **analogue only** for basis/coefficient.
- Honest scope stays: pieces are old; keep the synthesis; do not upgrade to a paper claim.
