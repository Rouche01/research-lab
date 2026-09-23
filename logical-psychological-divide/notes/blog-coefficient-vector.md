# A psychological state is a coefficient vector

Hamming’s two kinds of novelty are not two kinds of stuff. They are two operations on the same vector picture: a new weighting of existing generators, or a new generator.

## Hamming’s leftover question

I got fixated on a pair of words in Richard Hamming’s *The Art of Doing Science and Engineering*: logical novelty and psychological novelty.

He drops them almost in passing, while talking about machines and originality. A program, working properly, does not produce logical novelty — everything it does was already implied by what you wrote. It still produces psychological novelty constantly: you are surprised by your own code. Then he turns it on us. A lot of human discovery looks the same. Past experience led you there; circumstances prepared the result. Psychological, not logical. And once the postulates, definitions, and the logic are given, “all the rest of mathematics is merely psychologically novel.” At that level there is technically no logical novelty at all. He even asks whether logical novelty is actually possible.

That would not leave me alone. The two get used almost interchangeably in casual speech — “that’s a new idea” covers both — but they are not the same thing. Psychological novelty is new **to you**. You had a thought you hadn’t had before, but it was always reachable — someone else already had it, or you could have derived it from what you already knew. Logical novelty is stranger. It’s new **to the space itself**: not a fresh combination of things you already had access to, but something that couldn’t have been reached from the existing starting points. One visits an unvisited point in a space that was already there. The other expands the space. Hamming’s question, in that language, is whether the second kind ever happens.

## New weights versus new directions

I started looking for what it would take to formalize the difference — and it turned into a picture. If “new to you” means a new combination of things you already have, then what you already have is sitting there like a set of fixed directions. A basis. Every ordinary new thought is a new **coefficient vector**: a different weighting of the same directions, a combination you hadn’t computed yet but that was always in reach. Logical novelty isn’t a new combination. It’s a new **basis vector** — a direction that wasn’t in the set, one that expands what’s reachable rather than visiting a new point inside what already was. That doesn’t answer Hamming so much as make his question precise. It says what logical novelty would have to be — not a surprising combination, but the set of generators itself growing — and leaves open whether that ever actually happens.

## What it costs to keep each one

The storage question comes for free. A basis vector is a fixed point: cheap to keep, because you don’t store its consequences, you regenerate them on demand. A coefficient is disposable: computed fresh, tied to context, gone once the moment passes unless something bothers to write it down. Logical and psychological aren’t two kinds of content. They’re two tiers of one storage system: one compressed and durable, the other cheap to produce and expensive to keep.

The human version of that split is time. A logical item doesn’t happen on a Tuesday. Whatever gets you 2+2=4 (the axioms, not the answer) is the same tomorrow; that’s what “atemporal” means here — not a separate realm of non-physical objects, and not “math never changes,” but that a given rule doesn’t have to be re-derived when the clock moves. A psychological state is dated. You live in the combination: recency, salience, what just happened, the fact that it will decay. Grief is temporal. The attachment and loss it weights are closer to generators: they keep producing consequences without being the feeling itself. You experience the weather. The generators are why you don’t have to store every cloud.

That is also why hard science and social science *feel* like different worlds without being different kinds of stuff. Physics spends most of its effort hunting generators that survive time, so the trajectories can be thrown away. A lot of social science has to keep the diary: the objects are context-bound, path-dependent, and they change while you look. That isn’t “softer.” It’s that those fields often sit in the expensive layer until someone finds a basis that actually regenerates the pattern — game theory, bits of linguistics, a kinship algebra. The rest of the time you’re paying the cost of describing each instance. The interesting mistake is treating that as a metaphysical gap rather than a storage gap.

One caution, because it protects the original distinction: a generator is atemporal *once you have it*. The set of generators can still grow. That’s logical novelty. If “logical” meant “never changes,” the expansion exit would be impossible, and we’d be back to a hierarchy of eternal rules sitting above feelings. The loop is the point. Experience is temporal; the cheap things you extract from it are the ones that stop needing a timestamp.

## The state is the recipe

Drawing it makes this obvious in a way describing it doesn’t: a small number of fixed arrows from a common origin, and any given psychological state as a single arrow built by weighting them. The state **is** the recipe. The dashed lines are the coefficients — how much of each generator is active in this moment.

![Psychological states as combinations of a logical basis. Two teal axes labeled stable rule A and stable rule B; a coral arrow is their weighted combination.](figures/basis-combination.svg)

The teal axes don’t move. They’re the logical layer: atemporal once found. The coral arrow is dated. Tomorrow it can point somewhere else without the generators having to change. The same shape shows up in other rooms under other names. A transformer’s attention weights relative to its fixed matrices. Sparse coding’s activations relative to its dictionary. Associative memory’s current state relative to its stored attractors.

## Two exits

A basis doesn’t fall from the sky, and neither does a new basis vector. Something has to find both. That is the actual rule, and it is prior to any one modelling language.

Take noisy, high-dimensional experience and hunt for the cheapest structure that still explains it. Most of the time the hunt just adjusts weights on the existing basis. That’s psychological novelty: cheap, constant, the ordinary churn of updating coefficients. Every so often, no combination of the current basis is good enough. Nothing you already have explains the new data, no matter how you weight it. Then the system doesn’t get to reweight its way out. It has to add a genuinely new direction. Two operations, same process, two very different costs.

![Two exits of the same minimization. Left: reweighting on the same basis, a new coral state inside the existing space. Right: a faint new teal axis C, and the coral state using it.](figures/two-exits.svg)

Left is a new thought you could always have had: same A, same B, different recipe. Right is the rarer move. A faint third generator appears because no reweighting of A and B would land where the new state needs to be. The coral arrow can leave the old plane only because the basis grew.

That replaces a hierarchy — rule on top, feeling underneath — with a loop that has two exits. Experience feeds the minimization. Most of the time it exits through reweighting: new coefficients, same basis. Occasionally it exits the other way: a basis vector gets added, the space grows, and that’s logical novelty. Either way, the new state reshapes how the next round of experience gets read.

The cost that decides which exit you take is not a vibe. It is a tradeoff between fitting the current observations and keeping the generative structure small. Without some penalty on expansion, “add a new direction” is always available and the distinction collapses. With one, you only expand when a denser combination of the old generators would cost more than admitting a new one.

That cost is also what keeps the vector picture from being a definition in a costume. Arrows and weighted sums are cleaner than the real thing: generators compose in messier ways, and a handful of grammar rules will produce sentences nobody has ever said — which can look like the space growing when it hasn’t. So “still inside the span” can’t be the test on its own. Whether the old generators, pushed as far as they go, explain what you’re seeing more cheaply than admitting a new one — that can be.

## Active inference is an instance

I didn’t start from that rule and then go looking for examples. I got there by studying active inference. Once the two exits were visible, the Free Energy Principle looked less like the source of the picture and more like a particularly explicit instance of it. In that formalism the generative model is the basis, current beliefs are the coefficients, parameter learning is the reweighting exit, and structure learning is the expansion exit. Variational free energy is the cost: accuracy against complexity. That is why that literature was useful to read. It already writes the loop down carefully. It is not why the loop is there.

The same instance-pattern shows up elsewhere. Dictionary learning adds an atom when sparse weights on the current dictionary won’t reconstruct the data. Model-based reinforcement learning is what you get once a basis exists that you can plan with; model-free learning still learns, it just grinds through experience because it never builds the thing that would let it generalize. Minimum description length makes the efficiency concrete: you pay for the model plus whatever the model fails to explain, which in the usual examples is the difference between a description that grows like N and one that grows like log N.

## The cost of never expanding

That is the stake. If the loop only ever reweights and never expands, everything expensive stays expensive. Every situation the current basis can’t cover gets solved from scratch, at full cost, over and over, because nothing is allowed to become a new fixed direction. You’re paying the N-cost indefinitely — re-solving equivalent problems forever, each one arriving disguised as new.

## Why it matters

Find a new generator and you have not finished discovering. You have opened a room. Learn to drive and you have not had one new trip. You have a way of moving. The shop, a friend’s house, a road you have never taken: those are psychological — new combinations of a skill you are not still inventing. Most of what follows is that: new combinations of something you did not have before. Hamming’s line about mathematics, read the other way, is the same fact. Given the postulates, the rest is psychologically novel — and that is a large, useful space, not a consolation prize. One new direction makes possible a lot of ordinary new thoughts the old basis could not reach. Not every combination will be interesting. The room is still the point.

The same picture is why a small model beats a long list of rules. Expert systems stored answers as productions. When a case did not match, someone wrote another rule. That is the expensive path: every new instance becomes another generator. Modelled inference does the opposite. Keep a compact model. Treat the current situation as a weighting. Only add structure when no weighting of the old pieces will do. Active inference is a clean version of that engineering. First it infers where it is — the coefficient vector. Then it updates the weights. Only more slowly does it change the model itself. You do not have to stop using rules. You have to stop treating every solution as one.

## What’s mine, and what isn’t

So the trail was: Hamming’s distinction, sharpened into new-weights versus new-directions, turned structural by a basis-and-coefficient picture, made dynamic by a minimization with two exits, made consequential by what happens when you’re only allowed the cheap one. Nothing on that trail is new by itself. The novelty split is Hamming’s, compression-as-generalization is old ground, model-based reinforcement learning’s edge is documented, and active inference already has names for both exits. What’s mine is noticing they’re the same climb, with Hamming’s two kinds of novelty as the thread.

I wouldn’t treat the Free Energy Principle as a school to join, or as a stamp that makes the rest official. I’d treat it as one place this rule is already implemented with unusual clarity. If you’re modelling something that has to live in noisy experience and still keep a cheap generative structure, look for the two exits. Reweighting is the common move. Expansion is the rare one. The interesting systems are the ones that can tell the difference.
