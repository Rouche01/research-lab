# Research note: Logical/Psychological as Basis/Coefficient

**Status:** exploratory — feeds into the FEP/cultural-bifurcation paper thread and the licensing-selves work. Blog post drafted from this note (part 1, individual level); part 2 (group/licensing-selves level) not yet written.

## Origin

Started from a semantic question, not the framing below: what's the difference between **logical novelty** and **psychological novelty**?

- *Psychological novelty* — new to the individual, but reachable in principle from what they already had (a fresh combination of existing knowledge/traits).
- *Logical novelty* — new to the space itself; not reachable from the existing starting points at all (expands what's reachable rather than revisiting it).

This distinction is the actual hinge for everything below — it's sharper than a generic "logical vs. psychological" split and does real technical work.

## Core mapping

| Concept | Logical layer | Psychological layer |
|---|---|---|
| Role | Basis (fixed generators) | Coefficient (weighted combination) |
| Storage cost | Cheap — stored once, regenerates consequences on demand | Expensive — context-bound, decays, must be stored as trajectory not endpoint |
| Compressibility | Low Kolmogorov complexity | High-dimensional, low compressibility |
| Novelty type | Logical novelty = new basis vector (expands the space) | Psychological novelty = new coefficient vector (new combination of existing basis) |
| Analogues | Transformer weight matrices; sparse-coding dictionary; Hopfield attractor patterns | Attention weights; sparse-coding activation weights; current state relative to attractors |

## The two-exit minimization

Reframes FEP's minimization (not "predicting things" but continuous compression: find the lowest-surprise, lowest-complexity model explaining noisy experience) as having **two possible exits**, run on the same underlying process:

1. **Reweighting exit** (common, cheap) — adjust coefficients on the existing basis. Produces ordinary psychological novelty.
2. **Expansion exit** (rare, costly) — no combination of the current basis explains the data well enough; a new basis vector has to be added. Produces logical novelty.

This replaces a hierarchical reading (logical *above* psychological) with a **loop**: experience → minimization → (reweight or expand) → reshapes how next experience is read → repeat.

## Efficiency argument

Absence of a derived rule (never reaching the expansion exit) forces every new instance to be solved from scratch:

- **Model-free vs. model-based RL** — without a model, relearning by trial and error at high sample cost each time; with one, generalization/planning from few examples.
- **Minimum description length** — without the right rule, describing N observations costs ~N; with it, ~log N. Formal version of "no rule = inefficient."

## Honest scope note

No individual piece here is novel — compression-as-generalization (information theory, predictive coding), model-based RL's efficiency edge, and the novelty distinction all have prior literature. The synthesis — basis/coefficient framing + two-exit minimization as the mechanism connecting logical/psychological novelty to efficiency — is the contribution, and it's positioned as a technical blog post, not a paper claim.

## Open thread → licensing selves

Same structure proposed at the group level:

- **Basis** = a culture's set of licensed, legible self-templates at a given moment.
- **Coefficient** = an individual's actual lived combination (may drift from what's licensed).
- **Minimization** = social pressure to keep presented self close to a licensed combination (cost of deviating = rejection/illegibility).
- **Bifurcation** = the group-level "expansion exit" — when enough individuals' actual states drift too far from the current license for any reweighting to explain them, the license splits into competing bases (new subcultures), rather than one license stretching to cover everyone.

Question not yet resolved: what exactly plays the role of "the minimization" at the group level — is it distributed across individuals, or is there a distinct group-level process? Needs its own treatment before part 2 can be drafted.

## Artifacts produced from this thread

- Diagram: basis vectors (logical) + resultant vector with dashed projections (psychological), illustrating the recipe/combination idea.
- Blog draft v1 (expository).
- Blog draft v2 (storytelling, structured around the novelty-distinction rabbit hole as the actual discovery path) — current version.
