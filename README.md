# EvoDesign

An AI Designer That Learns to Improve Its Own Taste.

EvoDesign is an AI self-evolution experiment exploring whether an AI designer can improve not only its outputs, but also the rules and prompts that generate those outputs.

## Current Phase

Phase 1 — Concept Website

当前只是项目介绍页面。

目前尚未运行：

- AI Agent
- Cron Job
- Prompt Mutation
- Self-Evolution Loop

## Live Demo

https://evodesign.pages.dev/

## Phase 1

Phase 1 includes:

- Project introduction
- Automation vs Evolution
- Evolution Loop
- Future System Diagram
- Project Overview Table
- Concept Evolution Preview
- Reflection Example
- Future Design DNA
- Roadmap

## Project Structure

- `index.html` — complete semantic HTML5 concept page
- `styles.css` — responsive editorial visual system
- `script.js` — lightweight scroll-reveal interaction only
- `assets/` — reserved for local static assets (the current site has no external dependencies)

## Technology

- HTML5
- CSS3
- Vanilla JavaScript
- Cloudflare Pages

## Local Preview

Open `index.html` directly in a browser, or serve the directory locally:

```bash
python -m http.server 8000
```

Then visit `http://localhost:8000`.

## Cloudflare Pages

This is a pure static HTML website. No build step is required.

```bash
npx wrangler pages project create evodesign
npx wrangler pages deploy . --project-name=evodesign
```

If Wrangler is not authenticated, first run:

```bash
npx wrangler login
```

## Future

Phase 2 will introduce repository-based scheduled runs, reflection records, prompt versioning, and Git-based evolution history. Phase 3 will focus on demonstrating real self-evolution. These features are not implemented in Phase 1.
