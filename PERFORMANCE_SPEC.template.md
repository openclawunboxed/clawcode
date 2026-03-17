# PERFORMANCE_SPEC.md

## Feature / route
<Name here>

## User-facing goal
This route should feel fast on a mid-range mobile device and remain stable under normal production usage.

## Core budgets
- LCP target: <= 2.5s at p75
- INP target: < 200ms at p75
- CLS target: < 0.1 at p75
- Minimal client-side JavaScript
- No duplicate initial data fetches
- No unbounded list rendering
- Explicit caching strategy required
- Bundle growth must be justified

## Architecture constraints
- Prefer server-rendered data loading where possible
- Use client components only for browser-only interactions
- Keep expensive work off the render path
- Avoid broad client state when local state is enough
- Avoid duplicate transforms over the same dataset

## Rendering constraints
- Non-critical UI should be lazy-loaded
- Long lists should be paginated or virtualized
- Large third-party libraries should not land on the critical path without strong justification
- Images must reserve space and avoid layout shift

## Verification
- lint
- tests
- production build
- bundle analysis
- Lighthouse or equivalent
- explain any remaining bottleneck
