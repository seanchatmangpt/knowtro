# knowtro migration plan v26.11.16

Standing: UNVERIFIED

## Identity
- Path: /Users/sac/knowtro
- Remote: https://github.com/seanchatmangpt/knowtro.git
- Branch: v3@5191890e tracking origin/v3 ; last commit 2025-09-25 ; 3035 commits ; 37 MB
- Languages/build: TypeScript / pnpm workspace (package.json, vitest, build.config.ts), Justfile
- Nested repos: none

## Observed state
- Dirty 59: deletions under src/build/ (assets.ts, build.ts, config.ts, plugins/*)
- Untracked 4 (not inspected beyond count)
- Ahead 0 / behind 0; stash 0; unpushed branches 0; no node_modules present

## What it is
A fork/rename of Nitro v3 beta (nitrojs/nitro) — README still says "Nitro". The knowtro
rename intent is not documented locally.

## Classification
DORMANT (census agrees; last commit 2025-09-25).

## Migration risk
LOW. All commits pushed. The 59 deletions in src/build/ are uncommitted and would be lost,
but they look like an abandoned refactor rather than finished work.

## Recommended action
CLONE-FRESH
1. `cd /Users/sac/knowtro && git diff --stat` — DECISION: keep the src/build deletions?
   If yes: `git checkout -b wip/remove-build-layer && git add -A && git commit && git push -u origin HEAD`.
2. Otherwise do not copy; re-clone https://github.com/seanchatmangpt/knowtro.git on demand.

## First commands on the new machine
`pnpm install && pnpm test`

## See Also
- ../v26.9.19/
- /Users/sac/docs/jira/v26.11.16/README.md (master index)
