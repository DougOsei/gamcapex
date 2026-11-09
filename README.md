# Ghana Association of Microfinance Companies (GAMC) — Recreated Website

This repository contains the reconstructed, fully functional offline-ready website for the **Ghana Association of Microfinance Companies (GAMC)** (`gamcapex.net`), reconstructed from a Wayback Machine web archive backup.

---

## 🔍 Inspection Findings

When inspecting the uploaded backup archive, several critical issues were identified:
1. **Demo Limitation in Initial Backup**:
   The archive was captured using a free "DEMO" mode of a scraper tool, which only preserved **4 full HTML pages** (`index.html`, `members.html`, `publication.html`, `about-us/governance-structure.html`) and replaced the remaining **14 pages** with a demo watermark notice.
2. **Missing Pages**:
   Crucial pages including `about-us.html`, `services.html`, `news.html`, `gallery.html`, `contact-us.html`, event pages, category archives, and news posts were incomplete placeholder files.
3. **Wayback Snapshot Validation**:
   Checking historical captures confirmed legitimate snapshots existed between July and December 2024 (prior to the domain expiring or being redirected in 2025/2026).
4. **Asset Query Strings & Filename Mangling**:
   CSS and JS files were saved with version strings appended to filenames (e.g. `main_ver-6.7.1.css`, `bootstrap_ver-1.css`, `jquery.min_ver-3.7.1.js`), causing standard 404 errors when requested by vanilla web servers.
5. **Missing Fonts & Icons**:
   FontAwesome and Bootstrap icon font files were missing from the local folders, resulting in blank/broken icon placeholders.

---

## 🛠️ What Was Recreated & Fixed

1. **Full Recovery of All 14 Truncated HTML Pages**:
   - Re-queried the Internet Archive (Wayback Machine) using raw `id_` endpoints corresponding to the valid 2024 snapshots.
   - All 18 pages are now 100% complete with full layout, typography, navigation menus, and content.
2. **Complete Asset Normalization**:
   - Clean filename aliases were created for all 64 version-mangled assets (e.g. `main.css`, `bootstrap.css`, `jquery.min.js`, `rs6.css`, etc.) so they resolve whether referenced with or without version parameters.
   - Downloaded missing FontAwesome 4.7 (`.woff2`, `.woff`, `.ttf`) and Bootstrap Glyphicons font files into `wp-content/themes/redbiz/fonts/`.
   - Downloaded missing imagery including `about-us.png`, high-resolution PDFs, and reporting templates.
   - Linked NextGen gallery previews to high-resolution member visit and corporate governance photos.
3. **Seamless Relative Internal Navigation**:
   - Cleaned all hardcoded `https://gamcapex.net/...` and root `/...` links across all 18 pages to relative paths (`about-us.html`, `services.html`, `members.html`, etc.).
   - Multi-level subdirectories (`about-us/governance-structure.html`, `category/...`, `event/...`, `2023/...`) properly route backwards (`../index.html`, `../services.html`, etc.).
   - Removed third-party scraper promotional watermarks from page footers.
4. **Hero Slider & Carousel Support**:
   - Fixed Revolution Slider slide backgrounds to render photos from GAMC member visits and corporate governance sessions.

---

## 📂 Site Structure

- [`index.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/index.html) — Home page (Executive overview, Hero Slider, Objectives, Member highlights)
- [`about-us.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/about-us.html) — About Us (Vision, Mission, Core values, History)
- [`about-us/governance-structure.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/about-us/governance-structure.html) — Governance & Leadership structure
- [`services.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/services.html) — Services (Advocacy, Training, Research, Resource Mobilisation)
- [`members.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/members.html) — Member directory and benefits
- [`publication.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/publication.html) — Publications & Resources
- [`portfolios_category/publication.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/portfolios_category/publication.html) — Publications category
- [`news.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/news.html) — Latest announcements and articles
- [`gallery.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/gallery.html) — Photo gallery (Training, Visitations, Forums)
- [`contact-us.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/contact-us.html) — Contact details, location, and inquiry form
- [`event/13th-annual-general-meeting-agm.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/event/13th-annual-general-meeting-agm.html) — 13th AGM Event
- News Posts:
  - [`courtesy-call-from-giz-pfs-programme-manager.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/courtesy-call-from-giz-pfs-programme-manager.html)
  - [`giz-stakeholder-planning-workshop.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/giz-stakeholder-planning-workshop.html)
  - [`stakeholder-workshop-on-the-review-of-the-afi-grant-policy-documents.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/stakeholder-workshop-on-the-review-of-the-afi-grant-policy-documents.html)
- Archive & Category Views:
  - [`2023/07.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/2023/07.html), [`2023/11.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/2023/11.html)
  - [`category/news.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/category/news.html), [`category/important-links.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/category/important-links.html)
- `wp-content/` & `wp-includes/` — All stylesheets, scripts, plugins, fonts, and uploads.

---

## 🚀 How to Run & Preview

### Option 1: One-Click Batch Script (Windows)
Double-click [`start_server.bat`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/start_server.bat). This will start a local server at `http://localhost:8000` and automatically open your default browser.

### Option 2: Python Script
Run:
```bash
python serve.py
```

### Option 3: Standard Command
```bash
python -m http.server 8000
```
Then visit `http://localhost:8000` in any web browser.

### Option 4: Direct File Opening
You can also open [`index.html`](file:///c:/Users/ddssfffdddaassddfff/Downloads/Gamcapex/index.html) directly in any modern browser without a server.
