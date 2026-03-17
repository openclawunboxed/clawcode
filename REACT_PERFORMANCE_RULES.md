# REACT_PERFORMANCE_RULES.md

## React performance defaults

- Keep rendering logic pure
- Avoid unnecessary Effects that update state
- Keep state as local as possible
- Prefer derived values over duplicate stored state
- Avoid passing unstable object and function props deep through large trees
- Isolate expensive calculations
- Virtualize long lists
- Split heavy client trees into smaller boundaries
- Treat unnecessary re-render cascades as bugs

## Memoization policy

- Do not memoize by reflex
- Use `memo`, `useMemo`, and `useCallback` only when profiling or strong suspicion justifies them
- Prefer fixing impure rendering and bad state flow before adding memoization
- Avoid fake optimization that adds complexity without measurable benefit

## Context usage

- Keep context values stable when possible
- Avoid broad context that repaints large trees unnecessarily
- Prefer smaller boundaries and narrower subscriptions

## Verification

- Use React Profiler or React Performance Tracks when diagnosing render churn
- Explain which changes reduce re-renders and why
- Label unmeasured performance claims as hypotheses
