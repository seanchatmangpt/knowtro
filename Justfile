test:
    pnpm test

test-full:
    pnpm run test:types && pnpm run test:rollup && pnpm run test:rolldown

dev:
    pnpm run dev

build:
    pnpm run build

polish:
    pnpm run lint

ci: polish test-full
