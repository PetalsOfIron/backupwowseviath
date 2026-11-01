---
name: changelog-only-new
description: "Useful Tools CurseForge changelogs list only the updates since the previous changelog, not the whole history"
metadata:
  node_type: memory
  type: feedback
  originSessionId: 23c93097-e44e-4ee2-8cdb-6fc9148e0b90
  modified: 2026-10-31T12:21:49.495Z
---

When writing a CurseForge changelog for the Useful Tools addon, list only the updates made since the last changelog that was given, in plain paragraphs for the WYSIWYG box. Do not repeat items from earlier versions or add "as in 1.6" summaries.

**Why:** the user pasted a full changelog twice and asked "next time list only the updates" (after the 1.7 text repeated 1.6 content).

**How to apply:** keep a mental diff since the previous changelog text (version 1.9 was the last one given, 2026-11-01). Also keep the `.toc` version in sync with the changelog number the user names.

See also [[push-after-task]] and [[useful-tools-git-location]].
