# API Playbook

## Goal
Force operational thinking before endpoint implementation.

## Default priorities
1. Make latency targets explicit
2. Avoid N+1 queries
3. Keep payloads bounded
4. State caching clearly
5. Make retries, timeouts, and idempotency explicit

## Common OpenClaw mistakes to catch
- “working” handlers with poor query shape
- no pagination
- oversized serialized responses
- retry logic with duplicate side effects
- no timeout boundaries
- background jobs with unbounded fan-out

## Review question
What makes this endpoint or job expensive under load:
- query count
- bad indexes
- repeated transforms
- serialization cost
- retry storms
- concurrency
- cache misses

If the answer is unknown, it is not production-ready.
