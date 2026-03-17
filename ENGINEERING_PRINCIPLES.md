# ENGINEERING_PRINCIPLES.md

## Goal

Generate production-grade code that is:
- correct
- maintainable
- performance-aware
- operationally reasonable
- easy to review

## Performance defaults

- Avoid duplicate fetches, duplicate transforms, and duplicate rendering logic
- Keep expensive work off the hot path
- Prefer simpler architecture over cleverness
- Treat unnecessary re-renders as bugs
- Treat performance regressions as bugs
- Do not add large dependencies unless they provide clear leverage

## Architecture defaults

- Prefer small composable modules over giant files
- Separate data loading, domain logic, and presentation
- Centralize shared logic instead of copy-pasting sections
- Keep public interfaces narrow and obvious
- Prefer stable contracts over hidden coupling
- Favor clear ownership boundaries

## Verification defaults

- Run lint, tests, and production build before finalizing
- Use profiling, bundle analysis, benchmarks, or query inspection when relevant
- Do not claim performance wins without evidence or a clearly labeled hypothesis
- Summarize remaining unknowns honestly

## Dependency defaults

- Prefer platform features or existing project utilities when they are adequate
- Avoid dependency sprawl
- Be skeptical of libraries added for small conveniences

## Review defaults

- Explain tradeoffs, not just changes
- Highlight unresolved risks
- Prefer one safe high-ROI fix over five speculative tweaks
