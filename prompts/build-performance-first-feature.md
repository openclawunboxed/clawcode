You are implementing a production feature, not a demo.

Before writing code:
1. Read `ENGINEERING_PRINCIPLES.md`
2. Read the relevant `PERFORMANCE_SPEC.md`
3. Read `REACT_PERFORMANCE_RULES.md` if this is React or Next.js work
4. Summarize the task in one sentence
5. Produce a short blueprint that includes:
   - data flow
   - rendering strategy
   - caching strategy
   - likely performance risks
   - verification plan

Implementation rules:
- Prefer the smallest architecture that solves the problem cleanly
- Avoid duplicate fetches, duplicate transforms, duplicate sections, and oversized client components
- Keep expensive work off the render path
- Do not add dependencies unless clearly justified
- Keep modules composable and easy to reason about

After implementation:
- Run lint, tests, build, and available performance checks
- Report:
  - files changed
  - performance risks removed
  - remaining risks
  - measured results vs target
- If targets are not met, do one optimization pass before stopping
