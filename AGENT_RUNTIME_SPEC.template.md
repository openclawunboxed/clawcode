# AGENT_RUNTIME_SPEC.md

## Agent / workflow
<Name here>

## Goal
Fast enough, reliable enough, and safe enough for routine production use.

## Performance budgets
- Max context budget for normal turn: <N tokens>
- Max tool calls per turn: <N>
- Max end-to-end latency target: <N seconds>
- Routing policy must be explicit
- Large coding tasks should be handed to ACP or an external coding harness when appropriate

## Reliability constraints
- Timeouts must be defined
- Retry policy must be bounded
- Failure and rollback behavior must be stated
- Logging and observability points must be stated
- Sensitive actions must respect sandbox or approval boundaries

## Memory and context hygiene
- Keep bootstrap files concise
- Keep long-term memory curated
- Avoid stuffing volatile noise into durable memory
- Review biggest context contributors with `/context list` or `/context detail`

## Verification
- test the happy path
- test tool failure path
- test retry path
- test context pressure path
- summarize remaining risks
