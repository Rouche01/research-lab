# References — spec-owned vericoding

Sources being drawn on. Informal is fine — full citation only if this graduates into a formal paper.

## Reading room

- NotebookLM: https://notebook.google.com/notebook/b7610da1-9d38-47ae-91e0-908168cb6c97 — chat over uploaded sources; not the record
- Seed URL (create notebook with this first): https://arxiv.org/abs/2609.23954 — Djinnlang (closest philosophical fit)
- Then add: https://arxiv.org/html/2509.22908 — Vericoding benchmark; plus Aver / Bend / RIINA / WybeCoder pages below
- Hinge brief (paste as Copied text, or upload file): [notes/notebooklm-hinge.md](./notes/notebooklm-hinge.md)

## Languages / systems

- Aver — https://github.com/jasisz/aver — AI-written, human-reviewable; Lean/Dafny; Rust/WASM
- Bend — https://github.com/bendlang/bend — `LAWS.bend` + proofs; performance-oriented
- RIINA — https://github.com/ib823/riina — AI-native + Coq security corpus
- Djinnlang (Henniger, Chong, Amin) — https://arxiv.org/abs/2609.23954 — specs only; LLM in compiler; unambiguity; no public repo found
- WybeCoder — https://github.com/facebookresearch/wybecoder — prove-as-you-generate (Lean / Velvet)

## Benchmarks / adjacent

- Vericoding benchmark — https://arxiv.org/html/2509.22908 — Dafny / Verus / Lean solve rates
- Autofy — SPARK/Ada LLM + GNATprove synthesis (FormaliSE)
- LeetProof / Velvet — certified synthesis with multi-modal Lean verifier
