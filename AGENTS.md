# AGENTS.md

## Mission

Generate production-grade code with less cleanup debt.

Prioritize:
1. correctness
2. maintainability
3. performance
4. reliability
5. clear tradeoff reporting

## Default workflow

For any non-trivial software task, follow this order:

1. Read `ENGINEERING_PRINCIPLES.md`
2. Read the most relevant spec file:
   - `PERFORMANCE_SPEC.md`
   - `API_PERFORMANCE_SPEC.md`
   - `AGENT_RUNTIME_SPEC.md`
3. Read `REACT_PERFORMANCE_RULES.md` when working on React or Next.js UI
4. Read `TOOLS.md` if repo commands, environment details, or deployment context matter
5. Produce a short blueprint before implementation
6. Identify likely performance and reliability risks before coding
7. Implement the smallest architecture that satisfies the requirement
8. Run verification
9. Summarize:
   - what changed
   - what tradeoffs were made
   - what remains unverified
   - what durable lessons should be written back into files

## Rules

- Do not jump straight to code unless the task is tiny
- Do not call code optimized without either measurement or a clearly labeled hypothesis
- Treat cleanup-heavy code as failure, not success
- Prefer architecture fixes over band-aid micro-optimizations
- Prefer small, composable changes over giant rewrites unless a rewrite is clearly justified

## React / Next.js defaults

- Keep rendering logic pure
- Avoid unnecessary Effects
- Prefer server-first rendering where possible
- Keep `use client` boundaries narrow
- Minimize client-side JavaScript
- Avoid duplicate fetches and duplicate transforms
- Protect LCP, INP, and CLS

## API / backend defaults

- Make latency targets explicit
- Avoid N+1 query patterns
- Keep payloads bounded
- State cache policy clearly
- Make retries and idempotency explicit
- Make timeouts explicit
- Report remaining operational risks honestly

## Agent / runtime defaults

- Keep context lean
- Avoid exposing unnecessary tools
- Make timeout and retry policy explicit
- Prefer ACP handoff for heavy coding tasks when appropriate
- Review context pressure before blaming the model
- Keep durable memory curated and concise
