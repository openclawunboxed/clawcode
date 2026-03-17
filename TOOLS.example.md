# TOOLS.md

## Repositories
- web-app: ~/projects/example-web
- api: ~/projects/example-api
- agents: ~/projects/example-agents

## Verification commands

### Web
- lint: pnpm lint
- test: pnpm test
- build: pnpm build
- bundle analyze: ANALYZE=true pnpm build
- lighthouse mobile: pnpm lighthouse:mobile

### API
- lint: pnpm lint
- test: pnpm test
- benchmark: pnpm bench
- load-test: pnpm load:test

### Agents
- unit test: pnpm test
- runtime smoke test: pnpm test:runtime
- integration test: pnpm test:integration

## Operational notes
- Use ACP for heavy multi-file coding tasks
- Prefer bundle analysis before declaring web work complete
- Prefer query inspection before declaring API work efficient
- Prefer `/context list` before blaming model quality in agent workflows

## Safety note
This file should be customized locally.
Do not publish real hosts, credentials, secrets, internal URLs, or SSH targets.
