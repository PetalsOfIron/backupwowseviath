---
name: seviath-game
description: "Seviath MMO-like game project — design doc, bases folder, roadmap decisions made 2026-10-17"
metadata:
  node_type: memory
  type: project
  originSessionId: 38e5ea7d-0af9-43d6-91f0-1c9d616f1d1b
  modified: 2026-10-17T03:52:42.918Z
---

User is designing "Seviath", a vampire open-world RPG (100 races, living-world AI, P2P multiplayer). Design doc: `Downloads/seviathgame/SEVIATH_ALL.md` (20k lines; lines 1–1100 are the design, the rest is skill-tree data; Appendix B is generator filler). Roadmap written to `Downloads/seviathgame/ROADMAP.md`. Game repo: `Projects/seviath` (local git, Cargo workspace; asset pipeline in tools/asset_pipeline, Rust texture generator in crates/texgen). Blender 5.2 is the Steam install: `C:\Program Files (x86)\Steam\steamapps\common\Blender\blender.exe`. GPU RTX 3060 Ti 8 GB.

Character/monster/animal bases: `Downloads/Bases/Readybases/{Races,Monsters,Animals,buildings}` — ComfyUI image-to-3D GLBs, positions only (no UV/rig), 60k–1M tris. User keeps adding more. The "/" marks in the doc's race list = races with a ready base.

Decisions the user delegated to me ("I trust your decision more"): Bevy instead of a custom wgpu engine; vertical slice of one domain first; Blender headless cleanup pipeline (voxel remesh → QuadriFlow → bake → shared skeleton); ALL textures generated in Rust code (user's explicit choice 2026-10-17, no ComfyUI/hand painting) from Blender geometry bakes; small swappable local LLM; skills as data with a linter enforcing the role quotas. Keep the user's mechanics, races and skill rules.

State and next steps: docs/ROADMAP.md Part 6 (hand-off, 2026-10-17) — read it first when continuing.

**Why:** solo dev; the user wants their ideas kept but the build approach fixed.
**How to apply:** follow ROADMAP.md milestones; mark taste checks as NEEDS HUMAN TEST and stop. Related: [[open-source-and-settings]] (that applies to SeviathStudio; the game doc itself says all rights reserved).

**UPDATE 2026-10-17:** the user dropped code-generated textures and generated opposite sexes; they will paint textures and supply both-sex bases themselves. assets/ was emptied; see docs/ROADMAP.md Part 6.8. Wait for their files before building anything.

Tools for the new workflow are ready (template export, pack tool, docs/ASSET_WORKFLOW.md). Naming: `<Race>base<sex>.glb`. The user said: "we speak next when I prepare files" — do not build assets before they bring files.

**NEW PLAN 2026-10-17:** user brings textured bases (both sexes, baked in Blender); code only varies them into new persons in the same style with eyes/mouth/nose in the same place (docs/VARIATION_PLAN.md, ROADMAP Part 7). Planning stage: no game yet. Never run clean_base.py on textured models.
