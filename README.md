# research-lab

Personal playground for research threads, technical articles, proofs-of-concept, and general discourse. Anything mature enough to warrant its own history gets graduated out via `git subtree split` (see "Graduating an idea" below).

## Index

| Idea | Status | Notes |
|---|---|---|
| [licensing-collective-selves](./licensing-collective-selves) | active | |
| [logical-psychological-divide](./logical-psychological-divide) | active | |
| [voltmem-extensions](./voltmem-extensions) | active | Experimental extensions to [VoltMem](https://github.com/Rouche01) not yet ready for the main repo |
| [fep-paper](./fep-paper) | active | FEP / Markov blankets / hyperreal cultural phenomena / network bifurcation — leaning toward a blog post over a formal paper |

Update the status column as things move: `dormant` → `active` → `graduated` (link to the new standalone repo once it's split out).

## Structure per idea

Each idea folder follows a loose convention:

```
idea-name/
  README.md    # current state of the idea, rewritten as it shifts — not a changelog
  log.md       # running, dated journal of thinking (often the most valuable artifact)
  refs.md      # sources being drawn on
  scratch/     # code, notebooks, proofs, quick experiments
```

None of this is enforced — deviate when an idea calls for it.

## Graduating an idea

When a folder is ready to become its own repo, extract it with full history:

```bash
git subtree split --prefix=voltmem-extensions -b voltmem-extensions-split
mkdir ../voltmem-extensions && cd ../voltmem-extensions
git init
git pull ../research-lab voltmem-extensions-split
```

Then update this README's status column and link to the new repo.
