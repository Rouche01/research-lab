# Study track — CS Primer → spec-owned vericoding

Personal curriculum bridge: [CS Primer](https://csprimer.com/) (Oz Nova’s problem-based path for [Teach Yourself CS](https://teachyourselfcs.com/)) → working on this thread.

**Goal:** be able to (1) read Aver / Bend / Djinnlang-style designs critically, (2) write small verified programs, (3) build a toy `spec → stubs → verify → lower` loop in `scratch/`.

**How to use CS Primer here:** prefer Primer problems over passive TYCS textbooks when both cover the same subject. Side-load only what Primer doesn’t (yet) own — especially **language implementation** and **formal verification**.

---

## Where you are

Mark as you go. Course pages: [csprimer.com/courses](https://csprimer.com/courses/).

### CS Primer courses (project-weighted)

| Primer course | Priority for this thread | Status | Why / how much |
|---|---|---|---|
| [Programming: Beyond the Basics](https://csprimer.com/courses/programming/) | High | ☐ not started / ☐ in progress / ☐ solid | Recursion, composition, state — abstraction barriers that mirror “spec vs body” |
| [Computer Systems](https://csprimer.com/courses/systems/) | High | ☐ not started / ☐ in progress / ☐ solid | Machine model, C/asm, perf — grounds “lower to WASM/native” without worshipping mushy low-level codegen |
| [Algorithms and Data Structures](https://csprimer.com/courses/algorithms/) | Medium | ☐ not started / ☐ in progress / ☐ enough | Enough for IR/compiler structures; don’t block the thread on finishing all of it |
| [Operating Systems](https://csprimer.com/courses/operating-systems/) | Defer | ☐ | Useful engineer skill; weak leverage on vericoding IR |
| [Computer Networks](https://csprimer.com/courses/networks/) | Defer | ☐ | |
| [Relational Databases](https://csprimer.com/courses/databases/) | Defer | ☐ | |
| [Distributed Systems](https://csprimer.com/courses/distributed-systems/) | Defer | ☐ | |

### Gaps CS Primer does not replace (side tracks)

As of this note, the public Primer catalog is systems-heavy and does **not** list a full Languages & Compilers course. TYCS still treats compilers as essential; for *this* research line it is **the** critical subject.

| Gap | Priority | Status | Side track |
|---|---|---|---|
| Language implementation / compilers | **Critical** | ☐ | *Crafting Interpreters* (primary); Primer explainers like [compilation pipeline](https://csprimer.com/watch/compilation-pipeline/) as seasoning |
| Discrete math / proofs | High | ☐ | MIT 6.042 / *Mathematics for Computer Science* — logic, induction, proofs |
| Program verification | **Critical** | ☐ | Dafny tutorials + small verified programs |
| Type systems (selective) | Medium | ☐ | Later: TAPL skim or Software Foundations Vol 1 |

---

## Recommended order (Primer-native)

Alternate Primer problems ↔ side tracks ↔ tiny research contact. Do not wait to “finish CS Primer” before touching this folder.

```
Programming (Primer) ─┐
                      ├─► Crafting Interpreters (side) ─► Dafny (side)
Computer Systems ─────┘              │
                                     ▼
                          landscape + scratch/ toy
Algorithms ── as needed ──┘
```

### Phase A — Primer Programming (+ start Systems when ready)

- Work Primer **Programming** problems for real (not video tourism).
- Optional supplement Primer already suggests: *Composing Programs* / SICP / *Little Schemer*.
- **Checkpoint:** recursion, higher-order functions, and “objects as state organizers” feel natural; you can separate interface from implementation cleanly.

### Phase B — Compilers side track (do not skip)

- **Primary:** Nystrom, [*Crafting Interpreters*](https://craftinginterpreters.com/) — at least a working tree-walk interpreter; bytecode VM chapters are high value.
- Use Primer’s compilation / interpreter explainers when stuck conceptually.
- **Checkpoint:** you can narrate parse → AST → (types) → IR → execute/lower. This is the mental model for “LLM fills stubs; verifier accepts; backend lowers.”

### Phase C — Primer Computer Systems

- Full problem sequences: data representation, C, x86-64, microarch/caches as Primer structures them.
- Supplement if you want depth: CS:APP (Primer’s own suggestion).
- **Checkpoint:** you can argue why verified mid-IR + WASM/LLVM beats “AI emits raw asm” for both trust and speed.

### Phase D — Math + Dafny (parallel once Phase B is underway)

- **Math:** 6.042 — logic, induction, proofs (skim the rest).
- **Verification:** [Dafny](https://dafny.org/) — `requires` / `ensures` / loop invariants on 10–20 small programs.
- **Checkpoint:** one wrong-spec story you personally hit and fixed (specs-as-bottleneck, felt).

### Phase E — Primer Algorithms (as needed) + project contact

- Pull Algorithms problems when your toy IR needs trees/graphs/search — not as a gate.
- Keep deferring Networks / OS / DB / Distributed for this thread.

| When | Lab contact |
|---|---|
| Now | Fill this table; skim Bend `LAWS` + Aver README |
| During Phase B–D | Mapping notes; first hand-verified Dafny program |
| After Phase D checkpoint | `scratch/`: spec → stubs → verify (human or agent fills bodies) |

---

## Milestones

**Ready to prototype seriously** when:

1. Primer Programming is solid (or clearly past the sticky parts).
2. You have a non-toy interpreter (*Crafting Interpreters* bar).
3. You can green-verify non-trivial Dafny and explain the hinge in IR terms: human-owned surface vs regenerable body vs trusted checker.

**Ready to propose an IR design** when additionally:

4. Primer Systems (or equivalent CS:APP mental model) is in place for lowering/efficiency talk.
5. You can list what the IR must expose for proofs (types, effects, purity) vs what can stay opaque.

---

## Resources

| Need | Resource |
|---|---|
| Primary path | [CS Primer](https://csprimer.com/) |
| Course list | https://csprimer.com/courses/ |
| Compilers gap | https://craftinginterpreters.com/ |
| Math gap | MIT 6.042J (OCW) |
| Verification gap | https://dafny.org/ |
| Landscape | [refs.md](../refs.md) |
| TYCS map (context) | https://teachyourselfcs.com/ |

---

## Progress log

### 2026-10-06

- Track created (TYCS-oriented).
- Updated: primary vehicle is **CS Primer**; compilers + discrete math + Dafny called out as explicit side tracks (no full Primer compilers course on the public catalog yet).
- Next: mark **Where you are** for Programming / Systems / Algorithms; say which Primer course you’re in so the next week’s work can be concrete.
