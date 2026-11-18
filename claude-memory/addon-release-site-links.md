---
name: addon-release-site-links
description: "After every change to the Useful Tools addons (retail or Forever), run Projects/portfolio/publish_addons.py: it zips both editions, updates their GitHub releases and the download links/version on the Seviath site, and pushes the site"
metadata:
  node_type: memory
  type: feedback
  originSessionId: 23c93097-e44e-4ee2-8cdb-6fc9148e0b90
  modified: 2026-11-17T12:53:29.924Z
---

User said (2026-11-17): "always when you make changes to addon update the seviaths pages download links for the addon" (site https://github.com/PetalsOfIron/Seviath, page usefultools.html).

**How to apply:** at the end of any task that changed an addon file under `D:\wow\World of Warcraft\_retail_` or `_forever_` (SeviathsUsefulTools + its SeviathsUsefulTools_* folders), run `python C:\Users\SaphiresSilver\Projects\portfolio\publish_addons.py`. It builds `_dist/SeviathsUsefulTools-Retail.zip` and `-Forever.zip`, creates or updates the GitHub release `v<toc version>` of each repo (WOWSeviathsUsefultools-Retail, SeviathsUsefultools-forever) with `gh`, writes version + date + direct links (`releases/latest/download/<fixed name>.zip`) into `data/site.json`, regenerates the site and commits + pushes it. `--no-push` skips the site push. Never hand-edit the HTML (see [[portfolio-site-push-always]]).

**Why:** before this the page linked to `releases/latest` but neither repo had a release, so the download buttons led nowhere.
**Note:** the addon repos themselves are pushed by tools/auto_update (see [[push-after-task]], [[useful-tools-git-location]]); the release tag is made on main, so let that push finish first. The .toc version only changes when the user gives a number, so a release is replaced in place until then. SeviathsBars (the action bars addon) is not in these zips.
