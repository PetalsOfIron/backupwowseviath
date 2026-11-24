---
name: job-list-applied-removal
description: "Job report (Darba_piedavajumi_*.html/pdf): applied jobs must be removed; HTML has \"I applied\" buttons; do not apply for the user without being told"
metadata:
  node_type: memory
  type: feedback
  originSessionId: 5c4410c7-1755-4db2-9956-c88b7487f3ac
  modified: 2026-11-23T13:06:27.640Z
---

The job report in `Downloads\Dokumenti\CVCOVERLETTERS\Darba_piedavajumi_2026-11-23.html/.pdf` (built by `jobs.py` in the session scratchpad) lists exact jobs (LinkedIn remote Europe, Riga, cv.lv, visidarbi.lv, CVmarket). The user wants a job removed from the list after she applies. The HTML has an "I applied" button on every job (stored in her browser). When she says she applied somewhere, also drop that employer from the next report and add it to the skip list (the 25 NVA-diary employers are already excluded).

**Why:** she applies to many jobs and does not want repeats; she also said "dont apply yet": never submit applications for her unless she says so (see [[job-application-rules]]).
**How to apply:** check new job lists against the NVA diary (`darba-meklejumu-dienasgramata_kopija.docx`) and the earlier lists before showing them.

Applied 2026-11-23 (logged in NVA diary copy): ARMADILLO graphic designer on cv.lv (CVLV.pdf + approved letter). Skip ARMADILLO in the next report; the ARRISE UI/UX and graphic roles are still open.
Applied 2026-11-23 by e-mail to info@xjeans.eu (X-Jeans / SIA Lagra, artist/graphic designer, CVLV.pdf attached); logged in diary. Skip X-Jeans next time.
Applied 2026-11-23 by e-mail to veikals@multilukss.lv (Multilukss SIA, web designer, CVLV.pdf, subject E-veikals); logged in diary. Skip Multilukss next time.
User knows only Google Ads, not Meta Ads (2026-11-23): never list jobs that ask for Meta/TikTok/Facebook ads without Google Ads; Meta+Google combined is OK.
UPDATE 2026-11-23 (replaces removal rule): do NOT delete applied jobs from the HTML; keep every job in the list and mark the applied one with a green 'Pieteicies <date>' badge (so she can see who replies). Done for ARMADILLO, X-Jeans, Multilukss via scratchpad mark.py. Meta-only ad jobs stay removed.
