---
name: apps-private-by-default
description: "New apps the user makes are private by default (no public GitHub repo/release, no public download page) unless they say public"
metadata:
  node_type: memory
  type: feedback
  originSessionId: 5c4410c7-1755-4db2-9956-c88b7487f3ac
  modified: 2026-11-22T11:52:02.945Z
---

Every new application the user makes is **private by default**: no public GitHub repo or release, no public page or download link, not listed on the portfolio. Only publish an app when the user explicitly says it is public.

**Why:** the user does not want their apps copied or their code exposed (said 2026-11-22 while moving SEO Studio off public GitHub). Source code and builds stay on their PC until they decide otherwise.

**How to apply:** when starting or finishing a new app, build it locally and put the output in a local folder (for example Documents\<App name> download). Never create a public repo, release, or website button for it on my own; if a repo is needed, create it private. Ask before making anything public, and remember `gh` only has repo scopes (can make private, cannot delete). Existing open source apps (Seviathstudio, the WoW addons) stay public as decided earlier. See [[seo-studio-app]].
