---
name: push-after-task
description: "Useful Tools addon work is pushed after every task again (user said \"push all the time\", 2026-11-01); git stays outside the addon folder"
metadata:
  node_type: memory
  type: feedback
  originSessionId: 23c93097-e44e-4ee2-8cdb-6fc9148e0b90
  modified: 2026-11-01T07:47:27.333Z
---

Push Useful Tools addon work after every task (user: "i said push all the time and move the git out always"). This replaces the earlier "push only when the user says push" rule. Run `node "$TEMP\lchk\chk3.js" "<addon dir>"` first and require "problems 0", then commit and push with the external git dir (see [[useful-tools-git-location]]): `git --git-dir=C:\Users\SaphiresSilver\Projects\sut-retail-gitdir --work-tree=<addon folder> add -A / commit / push origin main`. Commit message ends with `Co-Authored-By: Claude Sonnet 5.5 <noreply@anthropic.com>`. The version in the .toc is only changed when the user gives a version number. The collected data is also pushed after each bake to PetalsOfIron/Data-wow ([[useful-tools-collected-data-repo]]; tools/update_data.py does it).

**Why:** the user wants the repository always current and the addon folder free of git files (CurseForge rejected zips containing .git/.github).
**How to apply:** nothing git-related ever lives inside the addon folder: no .git, .github or .gitignore (ignore patterns go in sut-retail-gitdir/info/exclude). If the release workflow (.github) must change, copy it from C:\Users\SaphiresSilver\Projects\sut-retail-github in, push, then remove it again. Still say that changes are not tested in game.
