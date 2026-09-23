# EvoDesign Evolution Cycle

You are running one real EvoDesign evolution cycle.

Read, in order:

1. `AGENTS.md`
2. `prompts/current.md`
3. the latest generation record, if one exists
4. the latest reflection, if one exists
5. `index.html`
6. `styles.css`
7. `script.js`
8. `README.md`

## Process

1. Observe information hierarchy, whitespace, typography, repetition, container usage, readability, visual rhythm, mobile behavior, consistency and clarity. Do not begin by searching for something to change.
2. Identify 2–4 current design decisions that should remain.
3. Choose only one meaningful, visible weakness affecting comprehension or design quality.
4. Explain its root cause and translate it into one reusable design lesson.
5. Decide `CHANGE` or `NO_CHANGE`. Use `NO_CHANGE` when evidence is weak or a modification would mainly create novelty.
6. Only when `CHANGE`, decide whether the lesson should minimally mutate the Design Prompt. Preserve prior prompt history and increment the version only when justified.
7. Make the smallest useful website modification expressing the lesson. Do not redesign the page.
8. Save a reflection, Generation JSON record and Run Log containing the prompt version, decision, timestamp and files changed.

Every run must be observable, honest and traceable. Never invent user feedback, analytics, scores, metrics or previous generations. Do not enable cron or modify files outside this repository.
