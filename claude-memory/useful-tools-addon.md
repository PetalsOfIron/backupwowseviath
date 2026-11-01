---
name: useful-tools-addon
description: "SeviathsUsefulTools WoW MoP Classic addon (ex SeviathsFarmPack) - merged modules, pending minimap skin work"
metadata:
  node_type: memory
  type: project
  originSessionId: 23c93097-e44e-4ee2-8cdb-6fc9148e0b90
  modified: 2026-10-26T11:03:45.991Z
---

Addon at D:\wow\World of Warcraft\_classic_\Interface\AddOns\SeviathsUsefulTools (MoP Classic 5.5.4, Interface 50504). Farm Pack + merged Codex / Dungeons&Raids / Guild Helper in Modules/, Hub.lua minimap menu. Draenor+ data is commented out ("NEWER EXPANSIONS"). Backup of original: %TEMP%\sfp_backup_1792426615.

**Update 2026-10-26:** user said skip the minimap skin. v1.19.0-mop done: Codex load error fixed (unknown event aborted Indexers.lua), SFP:Safe error capture + /sfp errors, unified Menu.lua, Collector.lua (learns NPC IDs/drops/nodes/items/recipes into account-wide DB), tooltips, QuestieBridge.lua (QuestieDB globals QuestDB/NpcDB/ItemDB/ObjectDB feed quests, rares, drops). Status/next checks in AddOns/SeviathsUsefulTools/TODO.md. Test harness: Python310 + lupa lua51 with a WoW stub (in session scratchpad, not saved).

**Update 2026-10-26 (later):** repo is pushed to https://github.com/PetalsOfIron/WoWSeviathsUsefulTools (git repo lives in the addon folder, branch main). Added: exact world-map spots, MinimapPins (HereBeDragons), Questie icon fix (/sfp questie), monster/dungeon pins, Scanner.lua (in-game item ID scan fills all trade goods), Guides.lua (mount steps + material pages; needs Data/Materials.lua + Data/Mounts.lua which do NOT exist yet). Wowhead returned 403 (CloudFront block) after ~250 quick requests: never hammer it again; resume only slowly (1 request / 3 s, single thread) with scrape_mats.py / scrape_mounts.py (resumable caches, were in the session scratchpad) and a generator that writes SFP.MaterialData / SFP.MountData Lua tables.

**Older to-do list (mostly done now)** is in AddOns/SeviathsUsefulTools/TODO.md** (from first in-game test: addon loads, Codex window opens but most tabs are empty; user wants ONE unified menu on left+right minimap click, Codex as a full MoP guide with tactics, hover tooltips for monster drops and item craft/junk/gear quality). Do that before the skin.

**Pending skin (user said "continue next time"):** snake minimap skin, inside this addon. Design: SQUARE minimap (square mask, GetMinimapShape "SQUARE"), snake mosaic border (9-slice: tileable snake_edge.tga 64x32 + snake_corner.tga 32x32), resizable (drag corner grip, Minimap:SetScale) and movable (drag border, save position), side panel with clock/mail/tracking/buffs, MoP tracking menu with presets, addon-button tray on hover, must work with Questie, farm-zone glow, extra feature of my choice.
Drafts live in the session scratchpad only (Skin.lua = old circular version needing rework to square; gen_square.py not yet run); not wired into the TOC. Media/ currently has unused snake_ring/glow/tile.tga.

**Why:** user ran low on credits and stopped mid-task. **How to apply:** rebuild Skin.lua for the square design, generate textures, add to TOC after Hub.lua, test with the lupa Lua 5.1 stub harness (Python310 + lupa).

**Update 2026-10-27 (v1.27.0-mop):** addon is now a self-contained Questie replacement (own data in Data/QD_*.lua, QDB.lua API, QuestMarkers/QuestUI). Quest monsters get head marks via enemy nameplates (user had enemyPlates CVar off; addon sets it once) and quest-text name matching. Missing positions come from a slow Wowhead scrape: AddOns/SeviathsUsefulTools/tools/scrape_questdata.py (resumable, 3 s/request, stop on 403) then export_questdata.py writes Data/QD_Extra.lua; resume steps are in TODO.md. **Why:** quest DB lacks Cata-era NPCs (Tainted Forest bears). **How to apply:** when the user asks to continue, run the scrape, export, /reload test, push.
