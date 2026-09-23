# A psychological state is a coefficient vector

Hamming’s two kinds of novelty are not two kinds of stuff. They are two operations on the same vector picture: a new weighting of existing generators, or a new generator.

## Hamming’s leftover question

I got fixated on a pair of words in Richard Hamming’s *The Art of Doing Science and Engineering*: logical novelty and psychological novelty.

He drops them almost in passing, while talking about machines and originality. A program, working properly, does not produce logical novelty — everything it does was already implied by what you wrote. It still produces psychological novelty constantly: you are surprised by your own code. Then he turns it on us. A lot of human discovery looks the same. Past experience led you there; circumstances prepared the result. Psychological, not logical. And once the postulates, definitions, and the logic are given, “all the rest of mathematics is merely psychologically novel.” At that level there is technically no logical novelty at all. He even asks whether logical novelty is actually possible.

That would not leave me alone. The two get used almost interchangeably in casual speech — “that’s a new idea” covers both — but they are not the same thing. Psychological novelty is new **to you**. You had a thought you hadn’t had before, but it was always reachable — someone else already had it, or you could have derived it from what you already knew. Logical novelty is stranger. It’s new **to the space itself**: not a fresh combination of things you already had access to, but something that couldn’t have been reached from the existing starting points. One visits an unvisited point in a space that was already there. The other expands the space. Hamming’s question, in that language, is whether the second kind ever happens.

## New weights versus new directions

I started looking for what it would take to formalize the difference — and it turned into a picture. If “new to you” means a new combination of things you already have, then what you already have is sitting there like a set of fixed directions. A basis. Every ordinary new thought is a new **coefficient vector**: a different weighting of the same directions, a combination you hadn’t computed yet but that was always in reach. Logical novelty isn’t a new combination. It’s a new **basis vector** — a direction that wasn’t in the set, one that expands what’s reachable rather than visiting a new point inside what already was.

That doesn’t answer Hamming so much as make his question precise. It says what logical novelty would have to be — not a surprising combination, but the set of generators itself growing. Whether that ever really happens is a question I’ll come back to, because it turns out to be the hardest thing in this essay.

## Storage, and time

The storage question comes for free. A basis vector is a fixed point: cheap to keep, because you don’t store its consequences, you regenerate them on demand. A coefficient is disposable: computed fresh, tied to context, gone once the moment passes unless something bothers to write it down. Logical and psychological aren’t two kinds of content. They’re two tiers of one storage system: one compressed and durable, the other cheap to produce and expensive to keep.

The human version of that split is time. A logical item doesn’t happen on a Tuesday. Whatever gets you 2+2=4 (the axioms, not the answer) is the same tomorrow; that’s what “atemporal” means here — not a separate realm of non-physical objects, and not “math never changes,” but that a given rule doesn’t have to be re-derived when the clock moves. A psychological state is dated. You live in the combination: recency, salience, what just happened, the fact that it will decay. Grief is temporal. The attachment and loss it weights are closer to generators: they keep producing consequences without being the feeling itself. You experience the weather. The generators are why you don’t have to store every cloud.

It’s also why hard science and social science can feel like different worlds without being different kinds of stuff. Physics puts most of its effort into generators that survive time, so the trajectories can be thrown away. A lot of social science has to keep the diary, because its objects are context-bound and change while you look. The gap there is a storage gap, not a metaphysical one — and it closes whenever someone finds structure that actually regenerates the pattern.

One caution, because it protects the original distinction: a generator is atemporal *once you have it*. The set of generators can still grow. If “logical” meant “never changes,” expansion would be impossible, and we’d be back to a hierarchy of eternal rules sitting above feelings. Experience is temporal; the cheap things you extract from it are the ones that stop needing a timestamp.

## The state is the recipe

Drawing it makes this obvious in a way describing it doesn’t: a small number of fixed arrows from a common origin, and any given psychological state as a single arrow built by weighting them. The state **is** the recipe. The dashed lines are the coefficients — how much of each generator is active in this moment.

![Psychological states as combinations of a logical basis. Two teal axes labeled stable rule A and stable rule B; a coral arrow is their weighted combination.](figures/basis-combination.svg)

The teal axes don’t move. They’re the logical layer: atemporal once found. The coral arrow is dated. Tomorrow it can point somewhere else without the generators having to change. The same shape shows up in other rooms under other names. A transformer’s attention weights relative to its fixed matrices. Sparse coding’s activations relative to its dictionary. Associative memory’s current state relative to its stored attractors.

## Two exits

A basis doesn’t fall from the sky, and neither does a new basis vector. Something has to find both.

Take noisy, high-dimensional experience and hunt for the cheapest structure that still explains it. Most of the time the hunt just adjusts weights on the existing basis. That’s psychological novelty: cheap, constant, the ordinary churn of updating coefficients. Every so often, no combination of the current basis is good enough. Nothing you already have explains the new data, no matter how you weight it. Then the system doesn’t get to reweight its way out. It has to add a genuinely new direction. Two operations, same process, two very different costs.

![Two exits of the same minimization. Left: reweighting on the same basis, a new coral state inside the existing space. Right: a faint new teal axis C, and the coral state using it.](figures/two-exits.svg)

Left is a new thought you could always have had: same A, same B, different recipe. Right is the rarer move. A faint third generator appears because no reweighting of A and B would land where the new state needs to be. The coral arrow can leave the old plane only because the basis grew.

That replaces a hierarchy — rule on top, feeling underneath — with a loop that has two exits. Experience feeds the minimization. Most of the time it exits through reweighting: new coefficients, same basis. Occasionally it exits the other way: a basis vector gets added, the space grows, and that’s logical novelty. Either way, the new state reshapes how the next round of experience gets read.

Which exit you take can’t be decided by how surprised you feel. It needs a cost: fit the observations, but keep the generative structure small. Without a penalty on expansion, “add a new direction” is always available and the distinction collapses into taste. With one, you expand only when squeezing the old generators harder would cost more than admitting a new one.

That cost is also what keeps the vector picture from being a definition in a costume. Arrows and weighted sums are cleaner than the real thing: generators compose in messier ways, and a handful of grammar rules will produce sentences nobody has ever said — which can look like the space growing when it hasn’t. So “still inside the span” can’t be the test on its own. The cost comparison can be. It’s worth watching it happen somewhere concrete.

## When an atom pays for itself

Sparse coding is the cleanest place I know to see this, because there the basis is an actual object you can point at.

Say you’re compressing small patches of natural images. You learn a dictionary: a few hundred atoms, mostly little oriented edges and blobs. Any patch gets written as a weighted sum of a handful of them. Dictionary is the basis. Weights are the coefficients. The whole framing of this essay is, in this one case, not a metaphor at all — it is the data structure.

Now a new kind of patch starts showing up. Some repeating texture, a weave, a kind of fur. Your edge atoms can still represent it, technically. But it takes many of them with large weights, and it takes them *every single time that texture appears*. You have two options, and they are exactly the two exits.

Keep the dictionary, and pay in coefficients. Every patch of that texture is expensive to describe, and you pay again on the next one, and the one after that.

Or add an atom shaped like the texture. That costs you a fixed amount once — you have to store the atom itself, and a bigger dictionary is a more complex model. After that, each of those patches costs nearly nothing: one atom, one weight.

The arithmetic is the whole discriminator. Total cost is the cost of the dictionary plus the cost of all the codes. Adding an atom raises the first term by a fixed amount and lowers the second by a little on every patch that uses it. So the decision doesn’t turn on how strange the texture is. It turns on **how often it comes back**. Seen once, it stays a coefficient no matter how odd it looked. Seen ten thousand times, the atom pays for itself and the system should expand.

That is a genuinely non-obvious consequence, and it is the main thing I think this framing buys. It says logical novelty is not about the magnitude of surprise. A one-off shock, however violent, is psychological — you absorb it as an expensive combination and move on. A modest regularity that keeps recurring is what earns a new generator. Frequency, not drama, is what pushes a system out the expensive exit.

It also says when expanding is the wrong move. Add an atom for every unusual patch and your dictionary bloats until it is just a list of the things you have seen — which is the no-compression case wearing a costume. The penalty on the model is what stops that, and it is not optional.

## The third move

There’s an operation I left out, and it happens to be the one that makes Hamming’s distinction hardest.

Go back to the dictionary. Keep it exactly the same size, but replace the atoms with better ones. Nothing was added, and the space it spans need not change at all. Yet every patch now codes in three atoms instead of eleven, and the total description length falls off a cliff. Nothing grew and something real happened.

That’s a change of basis, and it is neither exit. Not reweighting, because the generators themselves moved. Not expansion, because the count didn’t go up and nothing became reachable that wasn’t reachable before. It’s a re-description: the same space, said better. Fourier does it to a signal — a waveform that took a thousand numbers takes three, and nothing about the signal changed. A good abstraction does it to a problem you had been solving the long way for months.

I think this is what most people mean by insight, and it sits awkwardly in Hamming’s scheme, which is exactly why it’s worth naming instead of hiding. A reframing feels like logical novelty: the landscape looks different afterward and you can’t un-see it. But no direction was added, so by the definition I’ve been using it is psychological — you were always able to get there. The honest reading is that his two categories are a projection of something with more structure, and rebasing is the part the projection flattens.

It isn’t a third exit from the minimization, though. That still has two. Rebasing sits on a different axis: not a decision about what to do with the basis you have, but a change in which coordinates you keep the whole picture in.

## Whose basis, and Hamming’s regress

Now the objection I owe Hamming.

Dictionary learning has “add an atom” built into it. The procedure that expands the basis was specified in advance, along with the space of atoms it can reach. So was the new atom ever really outside the space? Relative to Tuesday’s dictionary, yes: no reweighting produced it. Relative to “the space of all dictionaries this algorithm can reach,” no — it was always available, and the system merely moved within a larger fixed structure. On that reading the expansion exit is just reweighting one level up, and logical novelty dissolves.

Push the regress and it never stops. Whatever produced your new generator was itself some capacity you had, sitting in some enclosing space you could name afterwards. This is Hamming’s suspicion in its strongest form, and I don’t think the vector picture refutes it. I don’t think anything does. You can always posit a larger space in hindsight, which makes the absolute version of the question — *is logical novelty possible, ever, for anyone?* — probably unanswerable rather than merely unanswered.

What the picture does is make the question answerable by relativizing it. Novelty is logical or psychological **relative to a named basis**. That sounds like a retreat and I think it’s the opposite, because the relative version is the one that has consequences. What the system actually holds is what determines what things cost it. A texture that requires a new atom is, for that system with that dictionary, in a different category from a texture it can already code cheaply — and the difference shows up in bits, not intuition.

There’s also a floor to the regress in practice. “Reachable in principle” and “reachable at this cost” come apart fast. A system whose atom-space is effectively unbounded still has to *find* the atom that pays, and the search is where the expense lives. For anything bounded — a person, a lab, a model on real hardware — the enclosing space may be specifiable and still be no help at all.

Computation is the one domain I know where the regress bottoms out in something firmer than intuition. The computable functions are closed under composition: you cannot combine computable things and land outside the set. Whatever a program does, however much it surprises the person who wrote it, was in the span. That is Hamming’s claim about machines — that they produce no logical novelty when working properly — with a theorem under it rather than a hunch. (The closure is the theorem. Church–Turing, the claim that this exhausts what “computable” could mean, is a thesis, because one side of it is an informal notion.)

Which makes the asymmetry he was circling sharper than he left it. For machines the question is settled, and settled his way: all novelty is psychological, every surprise is bookkeeping. For us it stays open only because nobody can write down what our basis spans, so nobody can show we can’t leave it. That is not evidence that we can. It’s a statement about which of the two questions is currently answerable.

This is also where I should say whose basis I mean, because the answer changes the mechanism. A person’s basis grows by learning. A field’s grows by argument and by somebody refusing to accept the current framing. A formal system’s grows by stipulation — you just add the axiom. A trained model’s grows by optimization or by an engineer. These are not the same process and I don’t want to claim they are. What they share is the accounting: a compact structure that regenerates, a state that weights it, and a decision about when squeezing the structure costs more than growing it. That claim is weaker than “it’s all one mechanism,” and it’s the one I can defend.

## Active inference is an instance

I didn’t start from that rule and then go looking for examples. I got there by studying active inference. Once the two exits were visible, the Free Energy Principle looked less like the source of the picture and more like a particularly explicit instance of it. In that formalism the generative model is the basis, current beliefs are the coefficients, parameter learning is the reweighting exit, and structure learning is the expansion exit. Variational free energy is the cost: accuracy against complexity — the same tradeoff the dictionary was making, written for agents that also act.

The three timescales are worth noting because they separate things this essay has been running together. Inference of hidden states is fast: where am I right now, which is the coefficient vector. Parameter learning is slower: reweighting. Structure learning is slowest, and it is the one that adds or prunes. That literature already writes the loop down carefully. It is not why the loop is there.

## What the picture borrows

I should be straight about what this framing does and doesn’t do, because it would be easy to read the next paragraph as proof and it isn’t.

The storage argument I opened with isn’t mine either. The difference between keeping a lookup table and keeping a short program that regenerates it is algorithmic information theory’s founding move, and Kolmogorov complexity is the formal version of “store the generator, not its consequences.” Minimum description length, its practical descendant, makes the cost of missing structure concrete: you pay for the model plus whatever the model fails to explain, which in the usual examples is the difference between a description that grows like N and one that grows like log N. Model-based reinforcement learning is what you get once a basis exists that you can plan with; model-free learning still learns, it just grinds through experience because it never builds the thing that would let it generalize.

Neither of those is a consequence of basis-and-coefficient. They were true before I drew any arrows, and they stand without the picture. The picture doesn’t derive them — it borrows them, and what it buys is bookkeeping: it tells you that a cognitive question about two kinds of novelty and an engineering question about compression are the same ledger, so the results on one side are allowed to constrain talk on the other.

That borrowing is enough to give the distinction a stake. If a system only ever reweights and never expands, everything expensive stays expensive. Every situation the current basis can’t cover gets solved from scratch, at full cost, over and over, because nothing is allowed to become a new fixed direction. You pay the N-cost indefinitely — re-solving equivalent problems forever, each one arriving disguised as new.

## Why it matters

Find a new generator and you have not finished discovering. You have opened a room. Learn to drive and you have not had one new trip. You have a way of moving. The shop, a friend’s house, a road you have never taken: those are psychological — new combinations of a skill you are not still inventing. Hamming’s line about mathematics, read the other way, is the same fact. Given the postulates, the rest is psychologically novel, and that is a large, useful space rather than a consolation prize.

The dictionary sharpens this. A generator is worth its cost in proportion to how often it gets reused, which means the rooms worth opening are the ones you will spend a long time inside. That is also a warning for anyone who prefers the dramatic exit: a new framework you invoke once is a bloated dictionary, not a discovery.

The same picture is why a small model beats a long list of rules. Expert systems stored answers as productions. When a case did not match, someone wrote another rule — the expensive path, where every new instance becomes another generator and the dictionary bloats exactly as predicted. Modelled inference does the opposite. Keep a compact model. Treat the current situation as a weighting. Only add structure when no weighting of the old pieces will do. You do not have to stop using rules. You have to stop treating every solution as one.

Anyone who has maintained a codebase has felt all three moves in their hands. A library is a basis and application code is coefficients. Refactoring is the change of basis: nothing new, everything cheaper afterward. Adding a primitive to the library is expansion, and it pays only if it recurs — which is the whole argument against the helper you extracted for a single call site.

## What’s mine, and what isn’t

So the trail was: Hamming’s distinction, sharpened into new-weights versus new-directions, turned structural by a basis-and-coefficient picture, made dynamic by a minimization with two exits, made checkable by a cost that says recurrence rather than surprise is what earns a generator. Nothing on that trail is new by itself. The novelty split is Hamming’s, algorithmic information theory got to the storage argument first, model-based reinforcement learning’s edge is documented, sparse coding has been adding atoms for decades, and active inference already has names for both exits. What’s mine is noticing they’re the same ledger, with Hamming’s two kinds of novelty as the thread.

And I still can’t tell him whether logical novelty is possible in the absolute sense. I’ve come to think that question doesn’t have an answer, and that the relative one is the useful thing he left behind: not *is this new to the universe*, but *is this new to the basis you’re holding, and what does it cost you to find out*. If you’re modelling something that has to live in noisy experience and still keep a cheap generative structure, look for the two exits. Reweighting is the common move. Expansion is the rare one. The interesting systems are the ones that can tell the difference.
