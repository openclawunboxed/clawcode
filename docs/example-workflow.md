# Example Workflow

## Goal
Improve a slow dashboard route without rewriting the whole app.

## Step 1
Create `PERFORMANCE_SPEC.dashboard.md`

## Step 2
Tell OpenClaw:

Read:
- `AGENTS.md`
- `ENGINEERING_PRINCIPLES.md`
- `PERFORMANCE_SPEC.dashboard.md`
- `REACT_PERFORMANCE_RULES.md`

Then:
- propose the smallest architecture that meets the budget
- identify top performance risks
- wait before implementation

## Step 3
Implement the safest highest-ROI fix first

Examples:
- remove duplicate fetches
- split oversized client components
- lazy-load non-critical widgets
- move heavy transforms off the render path
- narrow `use client` boundaries

## Step 4
Run:
- lint
- tests
- build
- bundle analysis
- lighthouse
- React performance profiling if needed

## Step 5
Summarize:
- what changed
- what risks were removed
- what still needs measurement
- what should be written back into durable rules
