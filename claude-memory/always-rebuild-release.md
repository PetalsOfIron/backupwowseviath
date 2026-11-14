---
name: always-rebuild-release
description: "After every change to SeviathStudio, run cargo build --release so the desktop shortcut app shows it"
metadata:
  node_type: memory
  type: feedback
  originSessionId: 6e1b7c37-b432-4a0c-841d-830d228a1f40
  modified: 2026-11-13T19:54:59.280Z
---

The desktop shortcut runs `Projects/seviathstudio-rs/target/release/seviathstudio.exe`. Tests do not update it (they use the test profile), so the user saw no changes in the app.

**Why:** the user said "the desktop app has no changes, always make it update with changes" (2026-11-13) after a long session of changes that were only tested, not built.

**How to apply:** at the end of every block of work (not only milestones) run `cargo build --release` in seviathstudio-rs and say the app was rebuilt; do it before replying. Do not do it while the app is running (the exe is locked) without saying so. See [[notes-folder]] for the project notes that already say this.
