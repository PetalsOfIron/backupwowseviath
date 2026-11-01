---
name: open-source-and-settings
description: SeviathStudio will be open source (license MIT vs MPL-2.0 undecided); user wants rich settings decided by Claude; uses a Huion pen tablet
metadata:
  node_type: memory
  type: project
  originSessionId: 6e1b7c37-b432-4a0c-841d-830d228a1f40
  modified: 2026-10-13T02:08:12.236Z
---

- SeviathStudio is **open source, GPL-3.0-or-later** (user: "same as Linux"; plan §F1 decided GPL-3.0-or-later — Linux's GPL-2.0-only would clash with Apache-2.0 deps like winit). COPYING + SPDX headers in every .rs file. Keep secrets/personal paths out of the repo; credit third-party licenses (Settings → Info).
- User asked to "add everything needed and more" for settings without asking them — choose sensible, working settings yourself; every setting must actually do something (no placeholder toggles).
- User's tablet: HUION (Windows sees "HID-compliant pen"/digitizer). Pressure comes via Windows Ink touch-force in winit/egui; if it fails, Huion driver's "Windows Ink" option must be on. Settings → Pen & tablet has a live pressure meter/test area.

**Why:** shapes licensing, repo hygiene and how much to ask vs. decide.
**How to apply:** see [[rust-egui-rewrite]] for where the code lives.
