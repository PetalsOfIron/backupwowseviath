---
name: useful-tools-collected-data-repo
description: Useful Tools collected data goes to the public GitHub repo PetalsOfIron/Data-wow; user authorised pushing it always (separate from addon version pushes)
metadata:
  node_type: memory
  type: project
  originSessionId: 23c93097-e44e-4ee2-8cdb-6fc9148e0b90
  modified: 2026-11-01T05:23:02.154Z
---

Collected game data of the Useful Tools addon (baked by tools/bake_collected.py from SavedVariables) is pushed to https://github.com/PetalsOfIron/Data-wow (public, main). The user said "always push to it": after re-baking, push the collected data there without asking each time. Addon version pushes to WOWSeviathsUsefulto-Retail still wait for "push" + version number ([[push-after-task]]).

**Why:** the user wants players to get his collected data through the addon; the addon cannot download anything, so the data ships in the addon zip (CurseForge) and the repo is its home.

**How to apply:** SavedVariables hit WoW's constant limit (262143 per file, ~96% used on 2026-11-01): never merge shipped data into the saved DB; read shipped data from its own files and save only new entries. Backups of the saved file are in Projects/sut-savedvars-backup. Never put .git/.github in the addon folder zip.
