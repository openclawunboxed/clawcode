Audit this React implementation for render-path waste.

Look for:
- impure rendering
- unnecessary Effects
- state update loops
- unstable props
- over-broad context usage
- expensive calculations on render
- avoidable re-renders
- long-list rendering problems

Return:
1. the top bottlenecks
2. which are architectural vs local
3. the safest high-ROI fixes
4. where `memo`, `useMemo`, or `useCallback` help
5. where memoization would be fake optimization
6. how to verify the result with React Profiler or React Performance Tracks
