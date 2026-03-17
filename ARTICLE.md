# How I Make OpenClaw Generate Production-Grade Code With Less Cleanup Debt

## The file-driven workflow I use for React, APIs, and agent systems so OpenClaw ships like an operator, not a demo machine

Most people use AI coding tools backwards.

They ask for a feature. The model writes a pile of code. Then they spend the next two hours cleaning it up, splitting giant files, shrinking the bundle, removing duplicate logic, fixing slow fetch patterns, and reverse-engineering the architecture they should have had in the first place.

That is not leverage. That is janitorial work dressed up like momentum.

The real problem is simple: AI optimizes for task completion unless you force it to optimize for something better. In practice, that often means plausible code, fast first drafts, and a hidden cleanup bill later.

With OpenClaw, this matters even more because OpenClaw is not just a chat box with a model attached. OpenClaw rebuilds context for each run from the system prompt, conversation history, tool calls and results, attachments, and injected workspace files.

That is why the right goal is not:

**Get OpenClaw to write more code.**

The right goal is:

**Get OpenClaw to write code that needs less cleanup.**

That is a very different game.

## The shift: turn performance into a contract

The biggest mistake people make is asking for optimization after the code already exists.

By then, the architecture is already leaning the wrong way. The fetch patterns are already set. The client boundaries are already too broad. The data flow is already uglier than it needed to be.

The fix is to make performance and quality explicit **before** implementation starts.

So instead of saying:

> build me a dashboard page

say:

> build me a dashboard page with p75 LCP under 2.5 seconds on mobile, INP under 200 milliseconds, CLS under 0.1, minimal client JavaScript, no duplicate initial fetches, no unbounded list rendering, explicit caching, and no large dependency added unless justified

That one change filters out a shocking amount of sludge.

It changes the model’s job from “make something that works” to “make something that meets a contract.”

That is closer to how serious engineering teams think.

## Why this works especially well in OpenClaw

OpenClaw already wants to be used this way.

Its workspace model is built around durable files.

That means your standards should not live as fragile one-off prompts buried in a single thread.

They should live in files.

This is the core unlock.

Instead of asking OpenClaw to “remember” how you like code written, you give it a small operating system:

- one file for workflow rules
- one file for engineering principles
- one file for performance budgets
- one file for environment-specific commands and constraints

Now the agent is not guessing your standards from vibes. It is reading the playbook and doing the job.

## The workflow I use: SPEC

I use a simple framework:

## SPEC
**S**et budgets
**P**in architecture
**E**xternalize rules
**C**lose the loop

That is the whole trick.

### 1. Set budgets

Do not say “make it fast.”

That phrase is decorative parsley.

Use measurable targets.

For a page or route, that might include:

- LCP target
- INP target
- CLS target
- minimal client JavaScript
- no duplicate initial fetches
- explicit caching strategy
- justified bundle growth
- pagination or virtualization for long lists

For an API, it might include:

- p95 latency target
- max query count per request
- cache policy
- retry and idempotency rules
- bounded payload size
- benchmark or load-test requirement

For an agent workflow, it might include:

- context budget
- tool budget
- timeout policy
- retry policy
- routing policy
- observability points
- memory hygiene rules

### 2. Pin architecture

Bad performance is often an architecture problem pretending to be a code problem.

The most common AI failure mode is not broken syntax. It is structurally dumb decisions:

- giant files
- repeated transforms
- unnecessary client boundaries
- duplicated fetches
- broad state where local state would do
- extra dependencies that buy almost nothing
- work happening in the hot path that should have happened earlier

You have to tell OpenClaw what shape of system is acceptable.

### 3. Externalize rules

This is where OpenClaw becomes especially powerful.

The practical setup is simple:

`AGENTS.md` for workflow rules.
`ENGINEERING_PRINCIPLES.md` for stable coding standards.
`PERFORMANCE_SPEC.md` for route, feature, API, or workflow budgets.
`TOOLS.md` for repo-specific commands, benchmark commands, and environment notes.

This turns “please remember my preferences again” into “read the operating system and do the job.”

### 4. Close the loop

A lot of AI code looks finished long before it is finished.

So the loop should be:

**blueprint → implement → verify → summarize**

Not:

**vibe → code dump → regret**

## React: stop OpenClaw from generating render churn

For React apps, a lot of “performance optimization” is really render-path hygiene.

That means your React instructions should sound like this:

- keep rendering logic pure
- avoid unnecessary Effects
- keep state as local as possible
- do not duplicate derived state
- isolate expensive calculations
- do not memoize by reflex
- use `memo`, `useMemo`, and `useCallback` only when profiling justifies them

## Next.js: make the server do more of the heavy lifting

For Next.js apps, the cleanest default is still to lean server-first.

So for Next.js, the contract is not just “make it faster.” It is:

- keep the critical path lean
- keep the client bundle honest
- protect LCP
- protect CLS
- let the server carry more of the load

## APIs and backend jobs: force operational thinking up front

A lot of AI-generated backend code “works” but is secretly expensive.

This is why backend work also needs a contract.

When I want OpenClaw to write backend code well, I force it to specify:

- expected request flow
- query plan
- caching policy
- retry and idempotency behavior
- concurrency assumptions
- latency targets
- verification plan

## Agent systems: performance is also context discipline

For OpenClaw-native workflows, “performance” is not just runtime speed. It is also context shape, tool exposure, routing discipline, memory hygiene, and failure handling.

So for agent workflows, the contract should include:

- max context budget for normal turns
- which tools are actually needed
- when to route work externally
- timeout and retry policy
- sandbox and approval boundaries
- what belongs in durable memory and what does not
- how to inspect context pressure with `/context list` and `/context detail`

## The 10-minute fast start

Create four files:

- `AGENTS.md`
- `ENGINEERING_PRINCIPLES.md`
- one spec file for the task
- `TOOLS.md`

Then give OpenClaw this instruction:

> Read `AGENTS.md`, `ENGINEERING_PRINCIPLES.md`, the relevant spec file, and `TOOLS.md`. Propose the smallest architecture that meets the budget, name the biggest performance and reliability risks, and wait before implementation.

## Worked example, representative workflow

Let’s say OpenClaw is asked to build a dashboard page.

The weak version of that request is:

> build me a dashboard with charts, filters, and a recent activity table

The better version is:

> build me a dashboard route with p75 LCP under 2.5 seconds on mobile, minimal client JavaScript, no duplicate initial fetches, explicit caching, lazy-load non-critical widgets, paginate large tables, and justify any large dependency

## Common anti-patterns

### 1. Asking for code before asking for a blueprint
This is how convincing sludge gets created.

### 2. Treating `AGENTS.md` like a junk drawer
If your operating rules are bloated, your context gets bloated too.

### 3. Using `useMemo` and `useCallback` like seasoning
Memoization is not a substitute for fixing real render-path problems.

### 4. Pushing too much into client components
That is how bundles get fatter and hydration gets more annoying.

### 5. Writing APIs without latency, query, or retry budgets
Then acting shocked when they work beautifully on localhost.

### 6. Letting agent memory become a landfill
Durable memory should be curated, not treated like infinite attic space.

### 7. Declaring something optimized without measurement
That is not engineering.

## The meta-rule that saves the most time

Here is the one sentence that matters most:

**Cleanup time is failure.**

If OpenClaw gives you code that technically works but leaves you with a refactor bill, it did not save time. It just delayed the pain and charged interest.

## The real payoff

The people getting the most value from AI coding are not the ones asking for the most code.

They are the ones who have learned how to turn performance, architecture, and verification into explicit contracts before the first line is written.

That is the real unlock.

Not better vibes.
Not longer prompts.
Not begging the model to “be senior.”

Better contracts.
