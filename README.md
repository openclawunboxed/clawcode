# OpenClaw Performance Pack

A file-driven operating system for making OpenClaw generate production-grade code with less cleanup debt.

This pack is built for builders using OpenClaw across:
- React and Next.js apps
- APIs and backend jobs
- agent workflows and runtime-heavy systems

## Why this exists

AI coding often looks fast at first and expensive later.

The goal of this pack is to force performance, architecture, and verification into the process before implementation starts.

Instead of asking OpenClaw to "write optimized code", you:
- define budgets
- define architecture constraints
- externalize rules into durable files
- verify each implementation loop

## What is official vs custom

Official OpenClaw pattern:
- `AGENTS.md`
- `TOOLS.md` style workspace notes
- file-driven workspace behavior
- context inspection and trimming
- ACP handoff to external coding harnesses

Custom framework in this repo:
- `ENGINEERING_PRINCIPLES.md`
- `PERFORMANCE_SPEC.template.md`
- `API_PERFORMANCE_SPEC.template.md`
- `AGENT_RUNTIME_SPEC.template.md`
- prompts and verification scripts

## Recommended workflow

1. Copy the relevant spec template and tailor it to your feature or system
2. Update `AGENTS.md` and your local `TOOLS.md`
3. Ask OpenClaw to read:
   - `AGENTS.md`
   - `ENGINEERING_PRINCIPLES.md`
   - the relevant spec file
   - `TOOLS.md` if environment details matter
4. Have it produce a blueprint first
5. Implement in small loops
6. Run verification
7. Write durable lessons back into your workspace

## Suggested task types

### React / Next.js
Use:
- `PERFORMANCE_SPEC.template.md`
- `REACT_PERFORMANCE_RULES.md`
- `prompts/build-performance-first-feature.md`
- `prompts/optimize-react-render-path.md`

### APIs / backend jobs
Use:
- `API_PERFORMANCE_SPEC.template.md`
- `prompts/build-performance-first-api.md`

### Agent / runtime workflows
Use:
- `AGENT_RUNTIME_SPEC.template.md`
- `prompts/audit-openclaw-agent-runtime.md`

## Start here

Read:
- `README.quickstart.md`
- `docs/quickstart-matrix.md`

## Notes

This repo is safe to share publicly if you keep it sanitized.

Do not publish your real:
- `MEMORY.md`
- `memory/`
- `USER.md`
- internal hosts
- SSH targets
- API keys
- production URLs
- customer data
