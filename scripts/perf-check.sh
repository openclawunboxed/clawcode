#!/usr/bin/env bash
set -euo pipefail

echo "==> lint"
pnpm lint

echo "==> test"
pnpm test

echo "==> build"
pnpm build

echo "==> bundle analysis"
ANALYZE=true pnpm build || true

echo "==> lighthouse"
pnpm lighthouse:mobile || true

echo "Done."
