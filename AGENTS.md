# AGENTS.md

## Project Overview

AIGov Insight marketing website. Built on the **AstroWind** template (Astro 5 + Tailwind CSS). Primary language is Chinese (zh).

`AIGovInsightEdge/` is a **separate sub-project** (Electron desktop app) with its own `.git` — treat it as an independent repo, not part of the Astro build.

## Commands

```bash
npm run dev          # Dev server at localhost:4321
npm run build        # Production build → ./dist/
npm run check        # Runs astro check + eslint + prettier (in that order)
npm run fix          # Auto-fix eslint + prettier
npm run check:astro  # Astro type-check only
npm run check:eslint # ESLint only
npm run check:prettier # Prettier check only
```

Always run `npm run check` before committing. The check order is astro → eslint → prettier.

## Architecture

- **Config**: `src/config.yaml` — site metadata, blog settings, i18n, analytics. Loaded by `vendor/integration/` as a virtual module (`astrowind:config`). Components import from `astrowind:config`, not directly from the YAML.
- **Navigation**: `src/navigation.ts` — header/footer link definitions.
- **Blog posts**: `src/data/post/` (`.md` and `.mdx` files), NOT `src/content/post/`.
- **Content schema**: `src/content/config.ts` — Zod schema for post frontmatter.
- **Path alias**: `~/` maps to `src/` (configured in `astro.config.ts` and `tsconfig.json`).
- **Vendor integration**: `vendor/integration/index.ts` — custom Astro integration that loads config, injects virtual module, and updates `robots.txt` with sitemap on build.

## Environment Variables

- `ASTRO_BASE` — Base path for deployment. Default: `/page-AstroWind/`. Set to `/` for root deployment. Docker builds pass this as a build arg.

## Key Conventions

- **Formatting**: Prettier — 120 char width, single quotes, 2-space indent, trailing commas (es5), `prettier-plugin-astro` for `.astro` files.
- **ESLint**: Flat config (`eslint.config.js`). Astro + TypeScript rules. Unused vars with `_` prefix are allowed.
- **Icons**: `astro-icon` with `tabler` and `flat-color-icons` sets. Import as `tabler:icon-name`.
- **Dark mode**: Class-based (`darkMode: 'class'` in Tailwind config).
- **Images**: Use `~/assets/images/` for imported assets, `public/` for static files. Image CDN domains are whitelisted in `astro.config.ts`.

## Docker Deployment

```bash
./build-docker.sh                              # Build with default base /
ASTRO_BASE=/your-path/ ./build-docker.sh       # Build with custom base
docker compose up -d                            # Run container on port 8080
```

The Dockerfile uses a multi-stage build: node (deps → build) → nginx (serve). Nginx config is in `nginx/nginx.conf`.

## Pitfalls

- Don't confuse `src/data/post/` (actual blog content location) with `src/content/` (schema definition only).
- The `astrowind:config` virtual module is the only correct way to access site config in components. Direct YAML imports won't work.
- `pushgithub.sh` uses rsync to copy to a separate directory — it's a manual sync script, not a git operation.
- The `.bak` files in `src/pages/` (`index.astro.bak`, `edge.astro.bak`) are backups, not routable.
