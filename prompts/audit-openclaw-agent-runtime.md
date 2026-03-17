Audit this OpenClaw workflow like an operator.

Look for:
- context bloat
- oversized bootstrap files
- unnecessary tool exposure
- weak routing choices
- missing timeout or retry policy
- poor memory hygiene
- weak observability
- places where ACP handoff would be cleaner

Return:
1. the biggest reliability and performance risks
2. the highest-ROI fixes
3. which files should change
4. what to trim from context
5. what to verify before calling this production-ready
