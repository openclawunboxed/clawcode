# React Playbook

## Goal
Reduce render churn before reaching for memoization.

## Default priorities
1. Keep rendering pure
2. Remove unnecessary Effects
3. Keep state local
4. Avoid duplicate derived state
5. Profile before adding memoization

## Common OpenClaw mistakes to catch
- Effects that mirror props into state without good reason
- expensive calculations inside render
- unstable object or function props
- giant context providers
- lists without virtualization
- blanket `useMemo` or `useCallback` with no profiling evidence

## Review question
If the component re-renders often, is the problem:
- actually needed work
- bad state flow
- unstable props
- broad context
- impure rendering
- unnecessary Effects

Only after that should you consider memoization.
