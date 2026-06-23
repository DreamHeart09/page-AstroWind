# Edge Page Premium Redesign — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Completely redesign `src/pages/edge.astro` from a text-heavy, developer-docs style page into an Apple-level premium product page with Bento Grid layouts, cinematic hero, visual-first storytelling, and investor/customer-focused messaging.

**Architecture:** Single-file Astro page rewrite (`edge.astro`). Replace the current ~1047-line file with a ~800-line premium design using: (1) cinematic hero with product screenshot, (2) Bento Grid feature showcase, (3) "Why Edge" value proposition section, (4) AI Copilot visual demo, (5) Performance stats bar, (6) Plugin ecosystem showcase, (7) Architecture diagram, (8) Quick Start + CTA. Reuse existing `edge-screenshots/` images and `glass-card` CSS patterns from web.astro. No new components or dependencies needed.

**Tech Stack:** Astro, Tailwind CSS (already configured), inline SVG icons, Intersection Observer for scroll animations.

**Design Direction:** Apple.com-inspired — restrained color palette, generous whitespace, large bold headlines with gradient text, Bento Grid cards with subtle borders and hover effects, screenshots as hero visuals, minimal text per section, premium dark-mode-first aesthetic.

---

## File Structure

Only **one file** is modified:

- **Modify:** `src/pages/edge.astro` — complete rewrite of the page content and styles

No new files created. All existing screenshots in `public/edge-screenshots/` are reused. Existing `public/edge-logo.png` is reused.

---

### Task 1: Hero Section — Cinematic Product Showcase

**Files:**
- Modify: `src/pages/edge.astro:1-200` (frontmatter + hero section)

**What changes:**
Replace the current text-only hero (which has no product screenshot, just text and CTA buttons) with a cinematic Apple-style hero that:
- Shows the product name "Edge" as a massive gradient headline
- Uses a short, punchy subtitle (not a paragraph)
- Displays the edge-hero screenshot (`edge-screenshots/tui-hero.png` or a mockup) inside a mac-window frame
- Adds ambient glow orbs behind the screenshot (matching web.astro pattern)
- Keeps the same CTA buttons but with more refined styling

**Design specs:**
```
- Full-width section, min-height: 100vh minus header
- Background: white dark:bg-[#050508]
- Headline: text-5xl/6xl/7xl/8xl font-bold, gradient text (indigo→purple→pink)
- Subtitle: text-xl/2xl, slate-400, max-w-2xl, one sentence max
- Product screenshot: mac-window frame with rounded corners, shadow, border, max-w-5xl centered
- Ambient glow: 2-3 large blurred circles behind screenshot, indigo/purple, opacity 0.2-0.4
- CTA buttons: primary gradient pill + secondary glass pill
- Floating badge: "macOS Native · AI-Native · Local-First" pill above headline
```

**Key CSS to carry over from current file:**
- `.mac-window`, `.mac-titlebar`, `.mac-dot` — already exist, keep as-is
- `.edge-gradient-text` — already exists, keep as-is
- `.hero-glow` — already exists, keep as-is
- `.glass-card` — already exists, keep as-is

**Estimated line count:** ~120 lines (down from ~200 for hero area)

---

### Task 2: Bento Grid — Core Capabilities Showcase

**Files:**
- Modify: `src/pages/edge.astro` — replace §4b AI-Native + §4c Desktop panels + §4d Performance sections

**What changes:**
Replace the current 3 separate sections (AI-Native 2x2 grid, Desktop panels 2-col, Performance stats) with ONE unified Bento Grid section. This is the visual centerpiece of the page.

**Layout — 4-column Bento Grid (responsive):**
```
Row 1: [AI Copilot — spans 2 cols, tall]  [AI-Native Insights — spans 1 col]  [Cost Simulator — spans 1 col]
Row 2: [Performance — spans 1 col]  [Plugin Ecosystem — spans 1 col]  [Local-First — spans 2 cols]
```

**Each Bento card design:**
```
- Background: white/50 dark:bg-slate-900/50, backdrop-blur
- Border: 1px solid rgba(255,255,255,0.08) dark / rgba(0,0,0,0.06) light
- Border-radius: 24px (rounded-3xl)
- Padding: p-8 md:p-10
- Hover: translateY(-2px), subtle shadow increase
- Content: icon (48x48, gradient bg), title (text-xl/2xl font-bold), description (text-sm/medium, slate-400), optional stat or image
```

**Card content mapping:**

1. **AI Copilot (2-col, tall):**
   - Icon: robot/sparkle gradient (indigo→purple)
   - Title: "AI Copilot"
   - Subtitle: "ReAct Loop · 15 GUI Tools · Screen Awareness"
   - Visual: Show the ReAct flow diagram (simplified, horizontal, with connecting lines)
   - Include the dialogue example as a code-style block at bottom

2. **AI-Native Insights (1-col):**
   - Icon: brain/lightning gradient (purple→pink)
   - Title: "AI-Native 洞察"
   - List: Anomaly Detector · Cost Simulator · Daily Briefing · Spotlight
   - Each as a mini pill/tag

3. **Cost Simulator (1-col):**
   - Icon: currency/chart gradient (amber→orange)
   - Title: "成本模拟"
   - Description: "一键切换 GPT-4o / Claude / DeepSeek / Qwen"
   - Visual: Mini bar chart mockup (CSS-only, 4 bars with model names)

4. **Performance (1-col):**
   - Icon: lightning gradient (emerald→teal)
   - Title: "极致性能"
   - Stats: <1ms Hook · >99.9% Capture · <10ms Query
   - Each stat as a big number with label

5. **Plugin Ecosystem (1-col):**
   - Icon: puzzle/extension gradient (cyan→blue)
   - Title: "插件生态"
   - Logos/names: OpenClaw · Hermes · Claude Code
   - Each as a small card with icon

6. **Local-First (2-col):**
   - Icon: shield/lock gradient (green→emerald)
   - Title: "数据不出 Mac"
   - Description: "100% 离线运行，零遥测，单文件 SQLite 存储"
   - Visual: File path display `~/.aigov-insight-edge/observer.db`
   - Stats: 40+ 模型定价 · 13 色彩方案 · Universal Binary

**Estimated line count:** ~200 lines

---

### Task 3: "Why Edge" — Value Proposition Section

**Files:**
- Modify: `src/pages/edge.astro` — replace current §4d competitive advantages checklist

**What changes:**
Replace the flat checklist of 8 competitive advantages with a visually striking Apple-style "Why Edge" section using large typography + visual emphasis.

**Layout:**
```
Dark section (bg-slate-900 / bg-[#050508])
Full-width, centered content
Large headline: "为什么选择 Edge？"
3 columns (responsive), each with:
  - Large icon (64x64, gradient background circle)
  - Bold title (text-2xl)
  - Description (text-base, slate-400, max-w-xs)
  - One key differentiator stat
```

**The 3 pillars:**
1. **macOS 原生体验** — Glass UI, 13 color schemes, Universal Binary, native notifications
2. **AI 原生架构** — ReAct Copilot, AI anomaly detection, cost simulation, daily briefing
3. **隐私至上** — Local-first, zero telemetry, single SQLite file, 100% offline

**Estimated line count:** ~80 lines

---

### Task 4: Plugin Ecosystem Showcase

**Files:**
- Modify: `src/pages/edge.astro` — replace current §6 plugins section

**What changes:**
Upgrade the current 3 plugin cards (OpenClaw, Hermes, Claude Code) from simple glass cards to a more visual showcase with:
- Horizontal card layout on desktop (3 cards in a row)
- Each card has a gradient icon, name, subtitle, feature list as tags, and a small screenshot
- Subtle border glow on hover matching the plugin's color theme
- Keep existing screenshots from `edge-screenshots/`

**Card design:**
```
- OpenClaw: emerald→teal gradient icon, 7 Hook Types · 2 Agent Tools · MCP Server
- Hermes: violet→purple gradient icon, Skills · Agents · Hooks · Monitors
- Claude Code: orange→rose gradient icon, Agent SDK · Full Session Capture
```

**Estimated line count:** ~100 lines

---

### Task 5: Architecture Diagram Section

**Files:**
- Modify: `src/pages/edge.astro` — replace current §8 architecture text block

**What changes:**
Replace the current text-only architecture description with a visual CSS-only architecture diagram showing the data flow:

```
User → Electron GUI → Main Process → LLM (node-llama-cpp)
                        ↓
              SQLite (observer.db) ← Hook System (IPC)
                        ↓
              Timeline · Dashboard · AI Copilot
```

Use a horizontal flow diagram built with CSS flexbox/grid, colored boxes with arrows. No images needed — pure CSS.

**Estimated line count:** ~60 lines

---

### Task 6: Quick Start + CTA Refinement

**Files:**
- Modify: `src/pages/edge.astro` — replace §9 Quick Start + §10 CTA

**What changes:**
- Quick Start: Keep the 2 install options (DMG + TUI) but restyle to match the Bento Grid card aesthetic
- CTA: Replace the current simple centered text with a full-width gradient background section (indigo→purple), with large headline "准备好掌控你的 AI Agent 了吗？" and download button
- Add a subtle floating edge-logo image or icon in the CTA background

**Estimated line count:** ~80 lines

---

### Task 7: Animation & Scroll Reveal Polish

**Files:**
- Modify: `src/pages/edge.astro` — update `<style>` block and `<script>` block

**What changes:**
- Keep existing Intersection Observer script (it works well)
- Add `.reveal-group` class for staggered children animation (each child delays by 100ms)
- Add subtle hover animations for Bento cards (scale 1.01, shadow increase)
- Ensure `prefers-reduced-motion` is respected (already done in current file)
- Remove unused CSS classes from the old layout (`.copilot-flow`, `.tool-card-mockup`, `.dialogue-label`, etc. if no longer used)

**Estimated line count:** ~40 lines of CSS updates

---

## Global Constraints

- **Language:** All user-facing text in Chinese (中文), matching existing pages
- **Dark mode:** First-class dark mode support using `:global(.dark)` pattern
- **Responsive:** Mobile-first, breakpoints at sm/md/lg/xl
- **Images:** All from `public/edge-screenshots/` — no new image files
- **Font:** System font stack via Tailwind (already configured)
- **No new dependencies:** Pure Tailwind CSS + inline SVGs
- **Navigation anchors:** Keep existing `#copilot`, `#ai-native`, `#desktop` anchor IDs for header nav links

## Section-by-Section Final Layout

| # | Section | Style | Key Visual |
|---|---------|-------|------------|
| 1 | Hero | Cinematic, full-viewport | Product screenshot in mac-window + glow orbs |
| 2 | Bento Grid | 4-col responsive grid | 6 feature cards with icons, stats, mini-visuals |
| 3 | Why Edge | Dark section, 3-col | Large icons + bold titles + key differentiators |
| 4 | Plugin Ecosystem | Light section, 3-col cards | Gradient icons + screenshots + feature tags |
| 5 | Architecture | Light section, centered | CSS-only flow diagram |
| 6 | Quick Start | Dark section, 2-col cards | Install commands in code blocks |
| 7 | CTA | Full-width gradient | Bold headline + download button |

