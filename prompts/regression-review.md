Act like a skeptical staff engineer reviewing this change.

Check for:
- unnecessary bundle growth
- duplicate logic
- repeated fetches
- poor cache behavior
- avoidable client components
- unnecessary re-renders
- list rendering problems
- image or layout-shift risks
- weak rollback path

Return:
1. merge blockers
2. non-blocking concerns
3. exact fixes
4. whether this change still meets the performance contract
