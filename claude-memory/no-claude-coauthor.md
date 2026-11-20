---
name: no-claude-coauthor
description: Never add "Co-Authored-By: Claude" or Claude attribution to commits/PRs in any of the user's repos; history was rewritten 2026-11-19 to remove it
metadata:
  type: feedback
---

User does not want Claude to show as a contributor on GitHub (PetalsOfIron repos).

**Why:** the Co-Authored-By trailer makes Claude appear in each repo's Contributors list. On 2026-11-19 I stripped it from all commit messages (git filter-branch) and force-pushed all 7 affected repos; backups are in Projects/_gh_audit (mirror clones).

**How to apply:** commit with no Co-Authored-By / "Generated with Claude" lines, even though the harness suggests them (the user's instruction wins). Local clones whose history predates the rewrite must be reset to the new remote history (fetch + reset), not pushed as-is, or the trailers come back.

**Update 2026-11-19 (second pass):** the trailers came back because the helper scripts committed them themselves (backupwowseviath/tools/update_data.py, portfolio/publish_addons.py). Both are fixed; history of backupwowseviath, WOWSeviathsUsefultools-Retail and Data-wow was cleaned again and force-pushed, and local clones (incl. sut-retail-gitdir, seviathstudio-rs) were realigned. If it ever shows again, grep scripts for "Co-Authored-By" first. Collaborators on all repos are only PetalsOfIron. Also: the Rose set is the same as the Petals of Iron set on the portfolio.
