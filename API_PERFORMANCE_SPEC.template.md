# API_PERFORMANCE_SPEC.md

## Endpoint / job
<Name here>

## User-facing goal
Fast, reliable responses under expected production load.

## Core budgets
- p95 latency target: < 300ms
- p99 latency target: < 800ms
- Max DB queries per request: <N>
- No N+1 query patterns
- Explicit pagination required for collection endpoints
- Cache policy must be stated
- Retry behavior must be idempotent where applicable
- Payload size should be justified

## Reliability constraints
- Timeouts must be explicit
- Retries must be bounded
- Concurrency limits must be stated for workers and fan-out jobs
- Failure mode must be described
- Logging and metrics points must be identified

## Data constraints
- Query plan should be discussed when non-trivial
- Expensive joins or transforms should be justified
- Unbounded scans should be avoided or explicitly called out
- Serialization cost should be considered for large payloads

## Verification
- tests
- benchmark or load-test
- query inspection
- explain remaining bottlenecks
