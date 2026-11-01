---
name: pc-limits
description: User's PC has 8 GB VRAM and struggles with several heavy things at once; keep GPU use to one thing at a time
metadata:
  type: user
---

The user's PC (RTX 3060 Ti, 8 GB VRAM, 32 GB RAM) cannot handle multiple heavy things at once. They said so on 2026-10-17. They also play FFXIV sometimes and tell me when ("I will tell you when and if"); otherwise full CPU is fine.

**How to apply:** screenshot tests take one global GPU lock (`lock_gpu()` in src/screens.rs), so only one wgpu device is open at a time. Never run several GPU or screenshot jobs in parallel (no parallel agents that run the tests). Normal cargo builds are fine.

**Update 2026-10-18:** the user plays WoW (low settings) while I work and said builds and tests are fine to run meanwhile ("it wont affect my game"). Their Task Manager with WoW running: i5-10400 (6 cores, 12 threads) at 33%, RAM 20 of 32 GB used (63%), GPU 26% at 58 C. So about 11 GB RAM and most CPU are free: normal builds and test runs are OK; still only one GPU job (screenshot test, AI) at a time.

**Update 2026-10-19:** the PC beeped during tests (it was the test tones from the Animate tests, fixed: tests no longer play sound). The user said quiet is not needed, but limit CPU use: their GPU and RAM (32 GB) are stronger than the CPU. Done with `.cargo/config.toml` (RUST_TEST_THREADS=6, RAYON_NUM_THREADS=6, build jobs 8). Heavy things can use more RAM and GPU, but still one GPU job at a time.
The user wants to run tests and a game together: long test runs go at below-normal priority (PowerShell Start-Process, PriorityClass BelowNormal, see CLAUDE.md), and only the tests of the changed part run between changes.
