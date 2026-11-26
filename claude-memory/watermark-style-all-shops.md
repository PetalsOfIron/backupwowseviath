---
name: watermark-style-all-shops
description: "Showcase and post images carry ONLY \"PetalsOfIron\" in all four corners (no tiled PREVIEW text), in every shop and on X"
metadata:
  node_type: memory
  type: feedback
  originSessionId: 5c4410c7-1755-4db2-9956-c88b7487f3ac
  modified: 2026-11-25T05:12:39.277Z
---

On 2026-11-25 the user corrected the logo showcases: the final style is "PetalsOfIron" in all four corners and NOT the PREVIEW text all over the image ("not the preview text all over it"); same as her other showcases on Etsy and Gumroad ("we do that in all shops"). The earlier tiled PREVIEW style on logos 1-4 and the wolves was redone.

**Crop-proof rule (2026-11-25):** the name must sit INSIDE the artwork's own bounding box (four corners of the logo itself), not at the cover edges, so a crop can't remove it. For emote packs and every other listing put "PetalsOfIron" on each individual product shown in the showcase (each emote/item), in all shops (Gumroad, Payhip, Ko-fi, Etsy), to be done AFTER the logo listings. Etsy first because buyers can crop right now.

**Why:** her usual shop showcases are branded only by the corner name.
**How to apply:** every showcase, thumbnail and social-post image of items for sale (Gumroad, Payhip, Ko-fi, Etsy, X) = untouched original on a 4:3 cover (1600x1200) + white text with dark outline "PetalsOfIron" at the four corners; no tiled PREVIEW. Sold files stay untouched ([[never-alter-originals]]). Builder output: _g_tmp\logos\wm2\<logo1-4|wolf|wolf2>\ (cover_1-3, thumb, post_cover). Prices in posts: [[check-price-before-posting]].

**Status 2026-11-25:** crop-proof corners applied to logos 1-4 (Gumroad xychjr, bnfnnk; Etsy 4625130951, 4625151960) and both new wolves: yellow shield wolf on Gumroad bnmgp (10 EUR, limit 1, SVG + her wolf.png + wolf2.png), white-on-black wolf on Etsy 4625169704 (her wolfie3/wolfie2 PNGs). Still TODO: all other listings (emote packs etc.) in all shops, Etsy first; the two old X posts for logos 3/4 still carry the old edge watermark style.
**File-size note:** Etsy shows sizes in kB of 1000 bytes, Gumroad/Explorer use 1024, so the same file looks "bigger" on Etsy (311,701 B = 311.7 kb Etsy = 304 KB Explorer). Sold files are byte-identical to her files in Downloads\graphic (cmp-verified).

**Etsy pass done 2026-11-25:** all 37 other active Etsy listings (VRoid items included, she said "actually do it") got the per-product corner marks; originals backed up at Projects\seviathstudio\src\_g_tmp\etsy_wm\orig\<listingId>\, results in \wm\, tool = wm2.py (rect + striped-bg median blob + gradient blob detectors; emote packs get a mark on each emote). Replace flow on Etsy: file_upload to "Add photos" input, then delete the first N old photos by hovering tile 1 and clicking trash (452,433; 452,453 when the title wraps to two lines), Publish changes (1362,696). Still TODO: Gumroad, Payhip, Ko-fi showcases (the 4 Etsy logos/wolves already done), the two old X posts for logos 3/4, and Etsy listings 4620172280 / 4620163235 are inactive and untouched. Football Club kit tag list contains "premade logo" (not changed).

**Update 2026-11-25 (later):** per-card marks were not enough for brand kits, Twitch kits, emote packs and logos, so those now carry an ALL-OVER tiled "PetalsOfIron" (30° diagonal, white ~33% + shadow) plus corner marks. Per-item marks remain only on VRoid items and the brush pack. Done: all Etsy listings, all 37 Gumroad products (covers + thumbnails, verified via public pages), Gumroad logos xychjr/bnfnnk/bnmgp and Etsy logos. NOT done: Payhip and Ko-fi showcases; old X posts. Tools: tile.py / wm2.py in _g_tmp\etsy_wm and _g_tmp\gum_wm. Gumroad flow (JS: click Add cover, hover tab + click [aria-label="Remove cover"], thumbnail button[aria-label="Remove"]; file_upload via refs; one call max 10.4 MB of files in total).

**Update 2026-11-25 (end):** the Clip Studio brush pack is EXEMPT (user: "brushes dont need watermarks"): restored to original images on Payhip (WiYMh), Gumroad (xwker) and Etsy (4622540593); never watermark brush showcases. Payhip: all 30 products re-done with the all-over tile (cover images, remove via `.js-image-cancel`, upload to the Cover file input, click Save Changes; cover input ref differs by number of product files). Five older Etsy listings (4582463220, 4582454180, 4582448876, 4582431535, 4582440060 on manager page 2) were also done: the manager shows 40 per page, 45 active in total. STILL TODO: Ko-fi, the two inactive Etsy listings, old X posts.

**Already-watermarked images (user, 2026-11-25):** some showcases (e.g. Gumroad banner template larimh, "Streamer & Gamer") already carry her own large gothic "Petals of Iron" watermark. If an image already has such a watermark, DON'T change or re-watermark it; leave it as is in every shop. Check images before stamping.
