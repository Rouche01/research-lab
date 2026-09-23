# Must there be a primitive basis?

**Status:** exploratory. Sub-question of the regress section in `blog-coefficient-vector-v3.md`. Deliberately *not* written into the essay; see Open.

The intuition: if every new generator turns out to have been reachable from some larger enclosing space, the regress only stops if something is primitive. So there must be a basis that is not derived from anything else and cannot be decomposed further.

The intuition bundles four separate claims, and they do not stand or fall together.

| # | Claim | Status |
|---|---|---|
| 1 | Basic elements exist that are not derived from others | Foundationalism. A position, not a result |
| 2 | Those elements cannot be decomposed further | Depends entirely on the composition operation named |
| 3 | There is **one** such basis | False wherever we can check |
| 4 | It is the same for every system | False wherever we can check, and provably invisible from above |

## Mapping

| Role | What it is | Canonical? |
|---|---|---|
| Generators | a particular basis | No. Many bases span the same space |
| Span / closure | everything the generators reach under composition | Yes, in the cases where anything is |
| Existence of a basis at all | "there has to be one" | An axiom. Over ZF, "every vector space has a basis" is equivalent to Choice (Blass 1984) |
| A bottom level | the regress terminates | Contested. Well-foundedness vs gunk; not settled |

The load-bearing row is the second. **Canonicity attaches to the closure, not to the generating set.**

## Analogues

Same shape, other rooms.

- **Linear algebra.** A vector space has a canonical dimension and no canonical basis. The standard basis of ℝⁿ comes from the presentation, not from the space. The invariant is the subspace.
- **Computability.** The computable functions are one class reached by Turing machines, λ-calculus, μ-recursion, SKI combinators, tag systems, and even a single combinator (iota). Wildly different primitives, identical span, no minimal generating set privileged. This is the essay's closure-under-composition point, read for what it says about *bases* rather than about machines.
- **Renormalization group.** Many microscopic models flow to the same fixed point. The universality class is the invariant; the micro-basis is not recoverable from the macro level.
- **Epistemology.** Agrippa's trilemma: a justification chain ends in infinite regress, circularity, or a dogmatic stop. There is no fourth exit, only the option of declining the question.

## Mechanism

Composition generates a closure. The closure is what stays put. Any generating set that reaches it is as good as any other, so "primitive" is a property of a *choice*, not of the structure.

The essay already contains the operation that demonstrates this and does not draw the conclusion. The third move, change of basis, preserves the span while moving the generators. If primitiveness were a real property of the generators, rebasing would destroy something. It destroys nothing.

## Honest scope

No piece is new. Blass's equivalence, the coincidence of Turing-complete models, RG universality, and Agrippa are all standard. The synthesis is the use: answering "must there be a primitive basis?" with "the invariant is the span, and the levels above a basis are systematically blind to which basis it is."

The second clause upgrades the essay's relativization from modesty to something with a mechanism behind it. The absolute question is not merely unanswered for want of cleverness; in the one physical case where we can check, the macro level provably cannot see its own micro-basis.

## Objections

**Steelman.** The closure *is* a foundational fact, so foundationalism wins and has merely been relocated. The class of computable functions is fixed, mind-independent, and reached by every route. That is exactly the primitive non-reductive thing being asked for.

**Reply.** It is a real invariant and it is not a basis. You cannot compose from a closure, only from a generating set, and it is the generating set the essay's accounting runs on. Granting the closure its canonical status concedes nothing about the generators, which is where the two exits operate.

**Second objection.** The RG argument overreaches. Universality is sharpest at critical points, and relevant operators do carry microscopic information into the macro theory. Treat it as suggestive of blindness-from-above, not as proof of it.

**What would falsify the mapping.** A non-degenerate structure with a provably unique generating set. Degenerate cases exist already (a one-dimensional space over 𝔽₂ has exactly one basis), so the claim is about the generic case and should be stated that way.

## Open

- Belongs in this folder, because it is a sub-question of the regress. But it shares a border with the coarse-graining thread pointed at [fep-paper](../../fep-paper), since both turn on what a level can and cannot see below itself.
- Kept out of the essay on purpose. Relativizing novelty to a named basis is what rescues the regress section, and chasing a primitive basis would undo it. The one importable piece is the span-versus-basis point, which is a paragraph and would give that section a positive answer where it currently only declines the question.
- Unresolved: whether "non-reductive" here means mereological (not composed of parts) or the philosophy-of-mind sense (higher-level facts not reducible to lower-level ones). The coarse-graining framing suggests the second, which is a different literature and a different argument.
