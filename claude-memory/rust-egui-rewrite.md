---
name: rust-egui-rewrite
description: "User chose a full Rust rewrite of SeviathStudio using egui (eframe 0.36), in Projects/seviathstudio-rs (separate repo from the Svelte app)"
metadata:
  node_type: memory
  type: project
  originSessionId: 6e1b7c37-b432-4a0c-841d-830d228a1f40
  modified: 2026-10-13T02:08:09.807Z
---

On 2026-10-12 the user chose a **full rewrite in Rust with egui** (native, not Leptos/Tauri) over keeping the Svelte/TS app.
The new crate lives at `C:\Users\SaphiresSilver\Projects\seviathstudio-rs`, branch main, pushed to https://github.com/santamadaraneilande-ctrl/seviathstudio (2026-10-13, user asked to replace the old web app there; done with an `-s ours` merge, no force push — the Svelte history stays in the repo's history). License GPL-3.0-or-later (plan §F1). ROADMAP.md in the repo covers plan Parts A–AR (re-planned 2026-10-13 after the user added Parts T–AR): milestones 1–8 done (through Selection & tools), 9–56 planned; next is 9 Layer organizer v2. When the user says "continue", build the next roadmap milestone. The user sometimes writes in Latvian — answer in the language they used.
Decisions recorded in ROADMAP: no Mixbox (CC BY-NC, not GPL-compatible) — own Kubelka–Munk spectral mixing; signed project files can only be tamper-evident (open-source app can't hide a key); game runtimes (SVRM) go in separate MIT repos. (eframe 0.36, edition 2024); the Svelte app in `seviathstudio/src/` stays working until the Rust version reaches parity.
Agreed order: Draw tab first (canvas, brush engine, layers, PSD, undo, snake-themed design, sub view docked in the right panel between Color and Layers, missing §16/C1 effects), then Parts → Rig → Physics → Animate → Stream, then shop/chat/accounts/AI.
Plan document: `C:\Users\SaphiresSilver\Downloads\SeviathStudio_Project_Plan_EN.md`.

**Handoff (2026-10-17):** full working notes, current state and next steps are in `seviathstudio-rs/CLAUDE.md` — read it first. In progress: plan Part AT Info screen; then add plan Parts AS/AT/AV to ROADMAP; then milestone 9.

**Why:** user wants Rust and "everything in the plan"; the plan is multi-phase, so work is staged.
**How to apply:** build Rust code against eframe 0.36 API (`App::ui(&mut self, ui: &mut Ui, frame)`, panels `.show(ui, ..)`); cargo is at `%USERPROFILE%\.cargo\bin` (prepend to PATH in each shell). Always compile before claiming something works.

**Workflow agreed 2026-10-18:** Claude finishes the whole app (all ROADMAP milestones, in order) on its own; the user tests everything afterwards and writes bugs and ideas into `FEEDBACK.md` in the repo; Claude reads it at the start of each session, fixes bugs first, does the ideas (a better solution than the written one is welcome, say what was done) and moves handled items to its Done part. The user will not necessarily answer questions in between: decide sensible defaults, keep going. The AI tools live in `~/SeviathAI` (private Python 3.10 env, Hunyuan3D code, models in the Hugging Face cache) and the app has a Download button for them.
