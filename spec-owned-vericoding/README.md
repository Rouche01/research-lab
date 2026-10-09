# Spec-owned vericoding

Current state of the idea. Rewrite this section as your thinking shifts — this is a snapshot, not a log.

## Status
active

## Core question / thesis

If humans can no longer review generated code at volume, what should the **human-owned surface** be — and what mid-level, checkable IR should disposable AI bodies target so verification stays cheap while lowering still yields real efficiency?

Working lean: humans own specs / laws / oracles; implementations are regenerable; “low-level for speed” is wrong if it kills proof automation — prefer structured IR, then WASM/native backends.

## Open threads

- Unambiguity (Djinnlang-style) vs audited mid-language (Aver) vs laws-as-gates (Bend): which trust split scales?
- Specs-as-bottleneck: wrong-but-proved; what secondary oracles (examples, PBT, differential traces) sit beside the proof?
- Efficiency: does the win live in AI-written low-level mush, or in verified mid-IR + existing optimizing backends?
- What to prototype in `scratch/` first: tiny spec → stub → verifier loop, or a literature/map note only?
- Foundations: CS Primer bridge in [notes/tycs-study-track.md](./notes/tycs-study-track.md) — Primer Programming + Systems first; side-load *Crafting Interpreters* + Dafny (compilers/verification not a full Primer course yet).

## Related threads

- **Relay OS** (product, not this lab): intent → plan → **manifest** → staged agent run with HITL. Disposable generated bodies are a natural fit for per-job glue / adapters / stage logic; the human-owned surface is intent + manifest constraints + feedback protocol, not the generated TypeScript. Near-term trust = sandbox + capability checks + HITL; formal vericoding is a later hardening layer for high-stakes actions. Do not merge this research into the product repo — link and steal patterns both ways.
- None of the other lab threads yet (orthogonal to FEP / VoltMem / licensing / logical–psychological novelty), aside from VoltMem as Relay’s memory substrate.
