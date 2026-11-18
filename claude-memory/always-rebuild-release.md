---
name: always-rebuild-release
description: "After every change to SeviathStudio: rebuild release, push, publish a GitHub release and update the Seviath site download page"
metadata:
  node_type: memory
  type: feedback
  originSessionId: 6e1b7c37-b432-4a0c-841d-830d228a1f40
  modified: 2026-11-17T12:48:34.199Z
---

The desktop shortcut runs `Projects/seviathstudio-rs/target/release/seviathstudio.exe`. Tests do not update it (they use the test profile), so the user saw no changes in the app (2026-11-13).

**Why:** the user said "always make it update with changes", then (2026-11-17) "always after changes update the changes to the Seviath page" and "update the seviath pages download link always you make changes to the app". They logged in `gh` as PetalsOfIron (token in the keyring, never ask them to paste codes in chat).

**How to apply:** at the end of every block of work: tests green, `cargo build --release`, commit, push, then publish the build as a release of PetalsOfIron/seviathstudio (zip with the exe, README, COPYING, animations) with `gh release create`, then update `data/site.json` (Seviathstudio download link and version) in Projects/portfolio, run `python generate.py`, commit and push to PetalsOfIron/Seviath (see [[portfolio-site-push-always]]). Say what was done and what was not. If the app is open the exe is locked: say so. Related: [[notes-folder]].
