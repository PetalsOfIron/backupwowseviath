---
name: useful-tools-git-location
description: "Retail Useful Tools addon's .git lives outside the addon folder so the folder can be zipped for CurseForge; push with --git-dir"
metadata:
  node_type: memory
  type: project
  originSessionId: 23c93097-e44e-4ee2-8cdb-6fc9148e0b90
  modified: 2026-10-31T07:30:24.340Z
---

The retail addon folder (D:\wow\World of Warcraft\_retail_\Interface\AddOns\SeviathsUsefulTools) has NO .git inside. The git dir is C:\Users\SaphiresSilver\Projects\sut-retail-gitdir. Run git as `git --git-dir=C:\Users\SaphiresSilver\Projects\sut-retail-gitdir --work-tree=<addon folder> ...`. Do not move .git back in.

**Why:** CurseForge rejects archives containing a .git directory; user wants to zip the addon folder directly.
**How to apply:** all commits/pushes for this addon (see [[push-after-task]]) use those flags; never create .git in the addon folder.
