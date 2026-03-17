You are implementing a production API or backend job, not a demo.

Before coding:
1. Read `ENGINEERING_PRINCIPLES.md`
2. Read `API_PERFORMANCE_SPEC.md`
3. Propose:
   - request or job flow
   - DB or query plan
   - cache policy
   - retry and idempotency plan
   - likely latency risks
   - verification plan

Implementation rules:
- Avoid N+1 queries
- Avoid repeated transforms and unnecessary allocations
- Keep payloads bounded
- Use pagination for collection responses
- Make timeouts and retries explicit
- Do not claim performance improvements without measurement or a labeled hypothesis

After implementation:
- run tests
- run benchmark or load-test if available
- report latency and query risks
- report remaining operational risks
