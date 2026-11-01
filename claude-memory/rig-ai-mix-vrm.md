---
name: rig-ai-mix-vrm
description: Decisions for the importer, 3D game rig and AI rigging (milestones 30b/30c)
metadata:
  type: project
---

Milestone 30b is a Live2D .cmo3 importer in its own module (user wants it to bring in Live2D users; test files Beija.cmo3, Semi.cmo3, Documents/vtuberscale.cmo3). It should also teach what the rig engine needs.

Milestone 30c: rig an uncut character into 3D for games without tracking, plus manual 3D painting of the rig like Blender and a one-click beginner auto-rig. A local AI (8 GB VRAM, free, offline) may do the rig: use it for the face if it is good, otherwise our own face rig; the two are mixable. Also a own VRM engine.

**Why:** the user wants both tracking and game uses, and no paid or online parts ([[online-scope]], [[pc-limits]]).
**How to apply:** check model licences and VRAM before adding any AI; keep any mix saved as one rig.

2026-10-18 idea from the user: make a 3D model from the picture with a local model, texture it with the drawing itself (project the drawing onto the mesh), then rig it with a model that rigs textured 3D models. Candidates (licence and VRAM still to confirm on the official repos): Hunyuan3D 2 mini for the shape (reports say roughly 3 to 5 GB for the shape, texturing is far heavier so use our own projection of the drawing), UniRig (MIT code, skeleton and skinning from a mesh; check that the skinning checkpoint is released), TripoSR as a lighter option. Must stay optional, external tool the user installs, one GPU job at a time. Our own uncut rig stays the default and the fallback.
Kimi's answer (2026-10-18, user pasted, unverified by me): Hunyuan3D 2 mini shape-only about 6 GB VRAM (fits 8 GB; with texture about 16 GB; Turbo 1-3 min on an 8 GB GPU), Tencent community licence. UniRig: MIT, skinning checkpoint now released, but the skeleton stage is not reliable on 8 GB (16 GB comfortable, package about 11.5 GB), load the two stages one after the other; it does not give standard humanoid names (HumanRig is an alternative to check). So the AI route: Hunyuan shape fits, UniRig rigging is a risk on 8 GB; our own picture-based rig stays the default. The user also wants two AIs in a row: the first makes the textured 3D character, and when it ends the second rigs it.
User chose Emi's expressions (Emi1.0.vrm, VRoid face mesh, 57 Fcl_* morph targets) as the face shape template; Sem's mouth clips.
2026-10-18: the user wants "Rig with AI": put a picture on the canvas, an AI makes the 3D model (Hunyuan3D 2 mini shape), our projection textures it, a rigger (UniRig) rigs it, blend shapes are added, output two ways: Games (GLB) and VTubers (VRM 1.0/0.x). Kimi suggested Grounding DINO + SAM 2 for the face points and MediaPipe for realistic faces, and a Python FastAPI/Celery backend with a VRM injector; we keep it in the Rust app (own VRM writer exists) and call small Python helpers in tools/ai/ one at a time. Done in the app: ai.rs runner, tools/ai/face_points.py, Find the face with AI, click/drag face points, GLB output. Nothing was installed or downloaded yet; ask before pip installs or model downloads.

**2026-10-19 licence note:** Hunyuan3D's Tencent licence excludes the EU, UK and South Korea (the user lives in Latvia), so the default shape AI is now TripoSR (MIT); Hunyuan3D is opt-in. UniRig weights (MIT, 5.5 GB) are in the Hugging Face cache; TripoSR is in SeviathAI/models/TripoSR. Never download or enable Hunyuan without telling the user about the territory clause.
