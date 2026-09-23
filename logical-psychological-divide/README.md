# logical psychological divide

Current state of the idea. Rewrite this section as your thinking shifts — this is a snapshot, not a log.

## Status
active

## Core question / thesis

Logical vs psychological novelty are two exits of one compression process: reweighting coefficients on a fixed basis (psychological) vs adding a new basis vector (logical). Active inference / FEP is a particularly explicit instance of that rule, not the source of it.

## Open threads

- Licensing-selves mapping stays out of the public post; group-level “minimization” still unresolved.
- Possibly add a second, faint basis vector to the diagram to mark logical novelty.
- Must there be a primitive basis? Worked in [notes/primitive-basis-question.md](./notes/primitive-basis-question.md). Current position: canonicity attaches to the span, not to the generating set, so the primitive thing being reached for is a closure rather than a basis. Unresolved whether "non-reductive" is meant mereologically or in the philosophy-of-mind sense; those are different arguments.
- Roman numerals as lookup table vs Arabic as short program: the numerals example could also carry the storage argument, but it is already carrying rebase and the zero-as-expansion point. Unused.
- The third move (change of basis) generalizes to level-selection: choosing macro variables is choosing a basis, and a level earns its keep when it makes description cheap. Same ledger as this thread, so captured here rather than scaffolded — but its likelier owner is [fep-paper](../fep-paper), where Markov blankets and the renormalization group are already the neighbourhood. Sources if it grows: computational mechanics, effective field theory, causal emergence.

## Layout

Working prose lives in [`notes/`](./notes). Root keeps the lab convention (`README`, `log`, `refs`, `scratch`).

- [notes/logical-psychological-basis-note.md](./notes/logical-psychological-basis-note.md) — condensed technical note
- [notes/research-thread.md](./notes/research-thread.md) — full trail, including blog drafts v1 and v2
- [notes/blog-coefficient-vector.md](./notes/blog-coefficient-vector.md) — v1: *A psychological state is a coefficient vector*; Hamming as origin of the novelty split; FEP as instance; closes with *Why it matters* (discovery arena; modelled inference / active inference timescales) then a short scope section
- [notes/blog-coefficient-vector-v2.md](./notes/blog-coefficient-vector-v2.md) — v2: adds a worked sparse-coding case (recurrence, not surprise, earns a generator), faces Hamming's regress by relativizing novelty to a named basis, and marks the efficiency results as borrowed rather than derived
- [notes/blog-coefficient-vector-v3.md](./notes/blog-coefficient-vector-v3.md) — **current public draft.** Same argument as v2, plainer and 13% shorter: no em dashes, shorter sentences, restatement cut, load-bearing terms (basis, coefficient, generator, the two exits) kept. Adds the recency-bias caveat in *Active inference is an instance*
- [notes/blog-coefficient-vector-v3-devto.md](./notes/blog-coefficient-vector-v3-devto.md) — DEV.to export of v3: frontmatter (`published: false`), tags `computerscience, machinelearning, ai, programming`, PNG upload placeholders, soft software-people hook under the dek. Source of truth remains v3.
- [notes/figures/](./notes/figures) — `basis-combination.svg` and `two-exits.svg` are the sources the essay embeds. `basis-combination-diagram.png` and `two-exits.png` are 2x rasters for platforms that reject SVG. `basis-combination.png` is the original hand-made diagram, kept as the provenance of the SVG, not a render of it. Regenerate the rasters with [scratch/svg-render/render.mjs](./scratch/svg-render/render.mjs)
