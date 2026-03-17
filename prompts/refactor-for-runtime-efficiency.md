Refactor this implementation for simplicity, maintainability, and runtime efficiency.

Constraints:
- Preserve behavior
- Reduce duplication
- Prefer one-pass transforms when readable
- Split oversized modules where it improves boundaries
- Remove unnecessary client-side work
- Avoid broad state when local state is enough
- Keep dependency count flat unless a new dependency has strong leverage

Deliver:
- refactor plan
- proposed file boundaries
- code changes
- risks
- verification results
