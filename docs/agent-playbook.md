# Agent Playbook

## Goal
Make OpenClaw workflows fast enough, reliable enough, and inspectable enough for production use.

## Default priorities
1. Keep context lean
2. Keep tool exposure narrow
3. Make routing choices explicit
4. Define timeout and retry behavior
5. Curate durable memory

## Common OpenClaw mistakes to catch
- bloated bootstrap files
- too many tools loaded for the task
- large coding jobs forced through the wrong runtime
- no failure-path testing
- no context inspection
- noisy memory that never gets pruned

## Review question
If the workflow feels slow or flaky, is the main problem:
- context pressure
- routing
- tool sprawl
- retry behavior
- timeout policy
- memory hygiene
- missing observability

Check that before blaming the model.
