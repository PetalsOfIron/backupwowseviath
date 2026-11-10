---
name: forever-quest-markers-questie
description: "Forever quest \"!\" marks now come from Questie's database (Data/QuestDB.lua, QuestStarts.lua) via tools/bake_questie.py; rules ported from Questie IsDoable"
metadata:
  node_type: memory
  type: project
  originSessionId: 23c93097-e44e-4ee2-8cdb-6fc9148e0b90
  modified: 2026-11-10T10:20:53.793Z
---

Questie + QuestieDB are installed in `_forever_\Interface\AddOns`. `tools/bake_questie.py` (needs `pip install cbor2`) reads the baked CBOR metadata in `QuestieDB_Forever.toc` (`## X-Quest-<id>-S`, `-<field>`; Npc/Object rows for spawns) plus Questie's `QuestieQuestBlacklist.lua` (evaluated as plain Era) and Holidays files, and writes `Data/QuestDB.lua` (rules per quest: level, race/class masks, ps/pg prerequisites, ex, nx, pa, bf/br, mr/xr rep, sk, sp, sf/fl flags, ev holiday) and `Data/QuestStarts.lua` (uiMap -> { name, x, y, {quests}, faction }). `QuestMarkers.lua` `doable()` mirrors `QuestieDB.IsDoable`; repeatable/daily/weekly are hidden on purpose (user wants no blue "!"). `/sut qmark` prints why each nearby quest is marked or not.

**Why:** Wowhead crawl data was missing prerequisites, class/race limits and had Season of Discovery quests; Questie's Forever DB is complete (5233 quests, 4914 with rules). The user cannot be replaced for in-game testing; the game cannot tell a remote giver's offers, so rules come from the DB.

**How to apply:** re-run bake_questie.py when Questie/QuestieDB updates. Retail has none of this. Credit Questie (GPL-3.0) in anything shipped. Old `Data/QuestGivers.lua`/`QuestPrereqs.lua` still load for the learned-quest code and fallbacks.
