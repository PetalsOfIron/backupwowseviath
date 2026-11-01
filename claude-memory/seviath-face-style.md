---
name: seviath-face-style
description: "Art direction for Seviath painted faces — the user's female and male anime reference styles"
metadata:
  node_type: memory
  type: feedback
  originSessionId: 38e5ea7d-0af9-43d6-91f0-1c9d616f1d1b
  modified: 2026-10-17T05:52:14.691Z
---

The user gave two anime portrait references (2026-10-17) for the code-painted faces in Seviath:
- **Female:** big glossy eyes with dark iris tops, heavy lids, thick black liner with a long upward wing, red lower liner, pink eyeshadow on lids and under the eyes, thin light brows, a barely-there nose, small full pink lips with a gloss highlight, soft pink blush.
- **Male:** narrow relaxed half-lidded eyes (iris top under the lid), thin lid line, no wing or long lashes, thick straight low brows, a strong cel shadow down the side of the nose, angular cheekbone-to-jaw shadows, a thin smiling mouth line with almost no lip color, no blush.

**Why:** these define the look; earlier generic eyes were "good but should be prettier".
**How to apply:** encoded as `data/palettes/style_feminine.ron` / `style_masculine.ron` in Projects/seviath, chosen per base by `"sex"` in data/assets.json. Keep new face features consistent with these. Related: [[seviath-game]].
