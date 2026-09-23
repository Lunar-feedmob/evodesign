# EvoDesign

An AI Designer That Learns to Improve Its Own Taste.

EvoDesign is an AI self-evolution experiment exploring whether an AI designer can improve not only its outputs, but also the rules and prompts that generate those outputs.

## Current Phase

Phase 2 — First Real Evolution Run

Phase 1 remains the Generation Zero baseline. Generation 001 is the first manually recorded evolution cycle.

目前尚未运行：

- AI Agent
- Cron Job
- Prompt Mutation
- Self-Evolution Loop (manual only; cron is disabled)

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

## Phase 2 Evidence

- `AGENTS.md` — long-term evolution rules
- `prompts/current.md` — active Design Prompt v1.0
- `prompts/history/v1.0.md` — immutable prompt history
- `prompts/evolve.md` — repeatable evolution-cycle instructions
- `reflections/2026-09-23-gen-001.md` — Generation 001 reflection
- `generations/gen-001.json` — structured generation record
- `logs/2026-09-23-gen-001.log` — execution log
- `scripts/evolve.sh` — locked, validated daily evolution runner

The page's `Live Evolution` section reports only the verified Generation 001 data. Concept previews remain explicitly labeled as concept material.

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

## Automatic Deployment

EvoDesign currently uses Cloudflare Pages Direct Upload. Pushes to the GitHub `main` branch are deployed through:

```text
GitHub Actions → Wrangler → Cloudflare Pages
```

The workflow is defined in `.github/workflows/deploy-cloudflare.yml` and always targets the existing `evodesign` Pages project from the repository root.

Required GitHub Actions Secrets:

- `CLOUDFLARE_API_TOKEN`
- `CLOUDFLARE_ACCOUNT_ID`

Secrets must be configured in GitHub repository settings and must never be committed to this repository.

## Daily Evolution

The daily evolution chain is:

```text
Daily Codex automation → scripts/evolve.sh --preflight → Codex (workspace-write)
→ reflection / generation / log evidence → validation → Git commit and push
→ GitHub Actions → Wrangler → the existing evodesign Cloudflare Pages project
```

### Schedule

One Codex automation runs daily at **09:00 America/Los_Angeles**. It uses the
repository's `scripts/evolve.sh` runner and never creates a second schedule.
Generation 002 is intentionally not created during infrastructure setup; the
first scheduled execution is responsible for the next generation.

### Preflight

Before enabling or troubleshooting the schedule, run the read-only check from
the repository root:

```bash
scripts/evolve.sh --preflight
```

Preflight verifies the `main` branch, a clean worktree, `origin/main`, the
current and next generation records, Codex authentication, Git credentials,
required prompts/rules, the deployment workflow, and the run lock. It does not
modify the site, create evidence, commit, or push.

### Manual Run

The normal command starts one real evolution cycle and is intended for a
deliberate recovery or test run only:

```bash
scripts/evolve.sh
```

Do not start a manual run while the scheduled run is active. The runner uses an
external lock and aborts instead of running two generations concurrently.

### Disable Daily Evolution

View the single Codex automation in the Codex task settings, then pause or
delete that automation to disable it. Re-enable the same automation (without
creating a duplicate) after running `scripts/evolve.sh --preflight` again.
Operational logs are kept outside the repository under
`~/.local/state/evodesign/`; repository `logs/` contains only per-generation
evidence.

## Future

Phase 2.2 enables the daily, evidence-first evolution runner. Generation 002
and later generations are created only by a verified scheduled execution.
