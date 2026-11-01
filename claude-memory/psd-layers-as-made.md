---
name: psd-layers-as-made
description: How the user wants real PSDs handled in the Parts and Rig tabs (their layering is right, clipping kept, patches cut to the face)
metadata:
  type: feedback
---

The user's finished VTuber PSDs (Beija, Evielina, Semi, vtuberscale, dreija, elfie in Downloads/Vroids and psd 2dstarted) are layered correctly on purpose: never reorder, merge or flatten them by default. Legs behind the skirt, neck behind the torso, scarf between front and back hair. Keep their own clipping layers as in the file. Mouth order is face, inner mouth, teeth, face patch, lips; teeth, inner mouth and the face patch are clipped to the black Faceline outline. If a layer name is wrong or has no side, go by where the layer lies (some of their files name L/R as the viewer sees it). The user said "if my layers are incorrect then fix it, maybe I made a mistake": fixing tags is fine, moving their layers is not.

**Why:** the user got angry when "Tidy" merged parts and put legs above the skirt; they want the rig to follow what the artist made.
**How to apply:** tag, bake nothing, cut pictures at render time (`clip_to`, `LayerTex::of_in`); check results with the PSD diagnostic test (see ROADMAP 30j-2) and look at the full-figure pictures, not only face crops. Related: [[rig-ai-mix-vrm]], [[open-source-and-settings]].
