---
name: wow-forever-addon
description: "SeviathsUsefulTools for WoW Forever (separate client _forever_): folder, repo, git dir, how data is baked"
metadata:
  node_type: memory
  type: project
  originSessionId: 23c93097-e44e-4ee2-8cdb-6fc9148e0b90
  modified: 2026-11-08T02:55:57.488Z
---

The Forever version of the addon lives in `D:\wow\World of Warcraft\_forever_\Interface\AddOns\SeviathsUsefulTools` (made from retail 2.3, Interface 16001, WOW_PROJECT_CAMELOT; Forever uses the retail engine with C_Traits but Classic content). Plan: `C:\Users\SaphiresSilver\Downloads\addonforver` and `FOREVER-PORT.md` in the addon folder. Repo: https://github.com/PetalsOfIron/SeviathsUsefultools-forever (public; git dir outside the folder: `C:/Users/SaphiresSilver/Projects/sut-forever-gitdir`, use `--git-dir ... --work-tree=.`; the load-on-demand folders are copied into `lod/`). Forever player data is treated like retail (collected and shipped), no need to ask before baking it; nothing of Forever saved data is pushed yet.

**Why:** the user wants a Classic-data version for Forever with Forever-specific UI (one megaserver split by kind: Normal / PvP / Roleplay / Roleplay PvP; players have two names; no delves, no Mythic+).

**How to apply:** data bakes use scripts in the Forever `tools/` folder (bake_items, bake_drops, bake_transmog, bake_collected with tools/classic_seed.lua, add_forever_items.py after AH scans, bake_recipes_forever.py, bake_talent_builds_forever.py, bake_stat_priority_forever.py). Syntax check: `node %TEMP%\lchk\chk3.js <addon folder>`. Work from Wowhead Classic pages and Icy Veins WoW Forever pages (Wowhead has no Forever guides). Retail repo remains PetalsOfIron/WOWSeviathsUsefultools-Retail.
