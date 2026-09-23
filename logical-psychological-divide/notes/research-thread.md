# Logical / Psychological — Research Thread

**RESEARCH THREAD · FEP / CULTURAL BIFURCATION PROJECT**

## Logical / Psychological as Basis / Coefficient

Full trail of the conversation — origin question, the vector picture, the two-exit minimization, the efficiency argument, and the open branch into licensing selves.

**Status:** blog draft v2 done · licensing-selves extension open

**Contents**

1. Origin
2. Core mapping
3. Diagram
4. Two-exit minimization
5. Efficiency argument
6. Licensing selves
7. Blog draft v1
8. Blog draft v2
9. Next steps

---

## 1 · Origin

Started narrower than the final framing: a semantic rabbit hole on the difference between **logical novelty** and **psychological novelty**.

- **Psychological novelty** — new to the individual, but reachable in principle from what they already had. A fresh combination of existing knowledge/traits.
- **Logical novelty** — new to the space itself. Not reachable from the existing starting points at all — it expands what's reachable rather than revisiting an unvisited point inside it.

This distinction turned out to be the real hinge — sharper than a generic "logical vs. psychological" split, and it does actual technical work once mapped onto vectors.

---



## 2 · Core mapping

Logical and psychological aren't different kinds of content — they're different tiers of one storage system: one slow and compressed (a basis), one fast and disposable (a coefficient).


| CONCEPT         | LOGICAL LAYER                                                                        | PSYCHOLOGICAL LAYER                                                                  |
| --------------- | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| Role            | Basis — fixed generators                                                             | Coefficient — weighted combination                                                   |
| Storage cost    | Cheap — stored once, regenerates consequences on demand                              | Expensive — context-bound, decays, must store the trajectory not just the endpoint   |
| Compressibility | Low Kolmogorov complexity                                                            | High-dimensional, low compressibility                                                |
| Novelty type    | Logical novelty = new basis vector (expands the space)                               | Psychological novelty = new coefficient (new combination of the existing basis)      |
| Analogues       | Transformer weight matrices · sparse-coding dictionary · Hopfield attractor patterns | Attention weights · sparse-coding activations · current state relative to attractors |


---



## 3 · Diagram

stable rule A (logical) — stable rule B (logical) — psychological state = combination of A and B

Fixed basis (teal) vs. resultant combination (coral) — the dashed lines are literally the coefficients.

---



## 4 · The two-exit minimization

Reframes FEP's minimization — not "predicting things" but a continuous compression process, hunting for the lowest-surprise, lowest-complexity model that explains noisy experience — as having **two exits**:

1. **Reweighting exit** (common, cheap) — adjust coefficients on the existing basis. Produces ordinary psychological novelty.
2. **Expansion exit** (rare, costly) — no combination of the current basis explains the data well enough; a new basis vector has to be added. Produces logical novelty.

This replaces a hierarchical reading (logical **above** psychological) with a loop: experience → minimization → reweight or expand → reshapes how the next round of experience is read → repeat.

---



## 5 · Efficiency argument

Never reaching the expansion exit means every new instance gets solved from scratch — the concrete, checkable cost of "not having the rule":

- **Model-free vs. model-based RL** — without a derived model, relearning by trial and error at high sample cost each time; with one, generalization/planning from few examples.
- **Minimum description length** — without the right rule, describing N observations costs ~N; with it, ~log N.

Honest scope: none of the individual pieces are new (compression-as-generalization, model-based RL's edge, the novelty distinction all have prior literature). The synthesis — basis/coefficient + two-exit minimization tying logical/psychological novelty to efficiency — is the contribution. Positioned as a technical blog post, not a paper claim.

---



## 6 · Open thread → licensing selves

Same structure proposed one level up, at the group scale:

- **Basis** = a culture's set of licensed, legible self-templates at a given moment.
- **Coefficient** = an individual's actual lived combination (may drift from what's licensed).
- **Minimization** = social pressure to keep a presented self close to a licensed combination — deviating costs rejection/illegibility.
- **Bifurcation** = the group-level expansion exit — when enough individuals' states drift too far from the current license for any reweighting to explain them, the license splits into competing bases (new subcultures) instead of one license stretching to cover everyone.

**Unresolved:** what exactly plays the role of "the minimization" at the group level — distributed across individuals, or a distinct group-level process? Needs its own treatment before a part 2 can be drafted.

---



## 7 · Blog draft v1 (expository version)



### The rule is a basis, not a fact

We treat "logical" and "psychological" like they're different kinds of stuff. One feels solid — a theorem, a rule, 2+2=4. The other feels like weather — mood, impression, the thing you're feeling right now that you probably won't feel tomorrow. But the interesting claim isn't that they're different substances. It's that they're different roles in the same storage system — and once you see it that way, some real math falls out of it.

### Storage is the tell

Ask a cheap question: what does it cost to keep each one around?

A logical rule is a fixed point. Apply it again, you get the same answer. Store it once, and it generates infinite correct outputs on demand — you don't need to cache the outputs, just the rule. That's why a handful of axioms can generate an entire field of theorems: the compression ratio is enormous.

A psychological state doesn't have that property. It's context-bound, high-dimensional, and it decays — the "meaning" is partly in the trajectory (recency, salience, what just happened before it), not just in some static content you could freeze. Storing it exactly means storing the whole moment, not a rule that regenerates it.

So "logical" and "psychological" start to look less like a metaphysical divide and more like two tiers of a storage hierarchy — one slow and compressed, one fast and expensive.

### Basis and coefficients

Here's the move that makes this precise: a psychological state isn't a different kind of object from the logical layer. It's a combination of it.

Picture a small set of fixed rules as basis vectors — a couple of arrows from a common origin, pointing in genuinely independent directions. They don't move. Now picture any given psychological state as a single vector built by weighting those basis vectors — a bit of rule A, a bit of rule B. The state is the recipe: which basis directions, how much of each.

This isn't a metaphor stretched thin. It's the same trick behind:

- **Sparse coding** — a small fixed dictionary of patterns, and a sparse set of weights saying how much of each pattern is active right now.
- **Attention in transformers** — the weight matrices are the fixed, "logical" structure, learned once. The attention pattern — how much a token draws on each part of that structure — is recomputed every forward pass. It's the psychological layer of the network.
- **Associative memory** — a handful of stored attractor states (logical), and the current state is just wherever the system sits relative to them.

Once you store it this way, you never store raw psychological states at scale. You store the basis (rarely touched, cheap) and the coefficients (recomputed constantly, but small).

### Minimization is how you find the basis

Here's the part that isn't just bookkeeping: the basis doesn't come pre-installed. Something has to derive it from raw experience, continuously.

This is what the Free Energy Principle is actually doing, underneath the jargon. It's not "pointing at the true rule." It's running a compression process: take noisy, high-dimensional input and find the lowest-surprise, lowest-complexity model that still explains it. The rule — the logical layer — is the output of that minimization, not something that exists prior to it. Which means the relationship isn't a hierarchy (logical on top, psychological beneath it). It's a loop: psychological data feeds the minimization, the minimization produces a rule, the rule reshapes how new psychological data gets interpreted, repeat.

The efficiency payoff of finishing that loop is the concrete, checkable part of the claim. Two examples that already have the math worked out:

- **Model-based vs. model-free reinforcement learning.** No rule (model-free) means you re-learn by trial and error every time, at enormous sample cost. A derived model means you can simulate and generalize from one example to a whole class of situations. The efficiency gap between the two is well-documented and large.
- **Minimum description length.** Without a compressed rule, describing N observations costs you on the order of N. With the right rule, it costs you on the order of log N. That's a formal account of exactly the inefficiency of operating without a derived basis — you're stuck storing (and re-solving) each instance individually instead of generating instances from a rule.

So: the absence of the rule isn't just inconvenient. It's the difference between solving a problem once and re-solving equivalent versions of it forever.

### What this isn't

Worth being honest about scope: none of the individual pieces here are new. Compression as the mechanism behind generalization is old ground in information theory and predictive coding; model-based RL's efficiency edge is well-established. What this post is doing is holding still on one framing — logical-as-basis, psychological-as-coefficient, minimization-as-the-derivation-step — because it's a genuinely useful lens, not because it's a new result.

Where it stops being just a restatement of known ideas is when you scale it past a single mind. If a basis is a rule an individual derives, what's the basis for a group — and what happens when a population's actual states drift too far from the basis currently licensed to explain them? That's the next post.

---



## 8 · Blog draft v2 (storytelling version — current)



### Finding the rule: a short trail of thought

It started with a much narrower question than I expected it to end on: what's the difference between logical novelty and psychological novelty?

They get used almost interchangeably in casual speech — "that's a new idea" covers both. But they're not the same thing. Psychological novelty is new **to you**. You had a thought you'd never had before, but it was always reachable — someone else already had it, or you could've derived it from what you already knew, you just hadn't gotten around to it. Logical novelty is stranger. It's new **to the space itself** — not a fresh combination of things you already had access to, but something that couldn't have been reached from your existing starting points at all. One visits an unvisited point in a space that was already there. The other expands the space.

That distinction wouldn't leave me alone, so I started looking for what it would take to actually formalize it — and that's where it turned into a picture, almost on its own. If "new to you" means a new combination of things you already have, then what you already have must be sitting there like a set of fixed directions. A basis. And every ordinary new thought — every bit of psychological novelty — is just a new **coefficient vector**: a different weighting of the same fixed directions, a combination you hadn't computed before but that was always in reach. Logical novelty, by contrast, isn't a new combination at all. It's a new **basis vector** — a direction that wasn't in the set before, one that expands what's reachable rather than just visiting a new point inside what already was.

Once I had that split — new weights vs. new basis — the storage question came for free. A basis vector is a fixed point: cheap to keep, because you don't store its consequences, you regenerate them on demand. A coefficient is disposable: computed fresh each time, tied to context, gone once the moment passes unless something bothers to write it down. So logical and psychological weren't two kinds of content after all — they were two tiers of one storage system, one compressed and durable, one cheap and constantly turned over.

Drawing it made this obvious in a way describing it didn't: a small number of fixed arrows from a common origin — the basis — and any given psychological state as a single arrow built by weighting them, a bit of A, a bit of B. The state **is** the recipe. And the same shape kept showing up once I went looking: a transformer's attention weights relative to its fixed matrices, sparse coding's weights relative to its dictionary, associative memory's current state relative to its stored attractors. Same pattern, three different rooms, three different names.

But a basis doesn't fall from the sky, and neither does a new basis vector. Something has to go find both — and that's where a completely separate thread I'd been circling, the Free Energy Principle, clicked into place. Not the flattened version — "the brain predicts things" — but the actual mechanism: something continuously chewing on noisy, high-dimensional experience, hunting for the lowest-surprise, lowest-complexity model that still explains it. Most of the time that hunt just adjusts weights on the existing basis — that's psychological novelty, cheap, constant, the ordinary churn of updating coefficients. But every so often, no combination of the current basis is good enough. Nothing you already have explains the new data, no matter how you weight it. That's the trigger for logical novelty — the system doesn't get to reweight its way out, it has to add a genuinely new direction. Two different operations, running on the same minimization, at two completely different costs.

Which reframes the original question I started with: the relationship between logical and psychological isn't a hierarchy, rule on top, feeling underneath. It's a loop with two exits. Experience feeds the minimization. Most of the time the minimization exits through reweighting — new coefficients, new psychological content, same basis. Occasionally it exits the other way — a basis vector gets added, the space itself grows, and that's logical novelty. Either way, the new state then reshapes how the next round of experience gets read, and the loop runs again.

And once I could see the two exits separately, the stakes of not reaching the second one became obvious. If the loop only ever reweights and never expands, you get exactly what the storage argument at the start predicted: everything expensive stays expensive. Every situation the current basis can't cover gets solved from scratch, at full cost, over and over, because nothing is allowed to become a new fixed direction. That's not a vague intuition — it has names. Model-free reinforcement learning without a model burns enormous amounts of experience relearning things a model-based agent would generalize instantly, because it never builds the basis that would let it generalize at all. Minimum description length says it outright: without the right structure, describing N observations costs you N; with it, costs you log N. Stuck with only coefficient-updates and no basis-expansion, you're paying the N-cost indefinitely — re-solving equivalent problems forever, each one arriving disguised as new.

So the trail was: a semantic itch about two kinds of novelty, sharpened into new-weights versus new-directions, turned structural by a basis-and-coefficient picture, made dynamic by a minimization principle with two different exits, made consequential by an efficiency argument about what happens when you're only ever allowed the cheap exit. Nothing on that trail is new by itself — the novelty distinction has philosophical history, compression-as-generalization is old ground, model-based RL's edge is documented. What's mine is noticing they're the same climb from three different rooms, with the two kinds of novelty as the thread that ties the rooms together.

And the reason I kept climbing wasn't abstract curiosity about individual minds. It's because I'd already run into the same shape somewhere else — at the level of a group, not a person. If an individual's basis is something derived from their own experience, with genuinely new basis vectors being rare and consequential, what's the equivalent basis for a culture — the set of licensed, legible selves a group converges on? And what does it look like when a population runs out of coefficient-room, when enough people's actual states can no longer be explained by any reweighting of the existing license, and the group is forced toward its own version of logical novelty — a new basis, not just a new combination?

That's not a question this post answers. It's the reason this post exists.

---



## 9 · Next steps

- Decide whether v2 should stand alone or explicitly tee up a part 2 on licensing selves.
- Resolve what "the minimization" looks like at group scale before drafting the licensing-selves piece.
- Possibly add a second, faint basis vector to the diagram to visually mark what logical novelty looks like.
- Fold back into the FEP paper / VoltMem thread once the group-level mechanism is worked out.

Compiled from a working conversation — carry this into the research-lab repo as the entry point for continuing the licensing-selves extension.