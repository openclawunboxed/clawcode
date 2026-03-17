#!/usr/bin/env bash
set -euo pipefail

echo "==> example stack verification"

if command -v pnpm >/dev/null 2>&1; then
  echo "Found pnpm"
fi

if command -v npm >/dev/null 2>&1; then
  echo "Found npm"
fi

if command -v yarn >/dev/null 2>&1; then
  echo "Found yarn"
fi

if command -v bun >/dev/null 2>&1; then
  echo "Found bun"
fi

echo
echo "Customize this script per repo."
echo "Suggested categories:"
echo "- lint"
echo "- tests"
echo "- build"
echo "- bundle analysis"
echo "- lighthouse"
echo "- benchmarks"
echo "- load tests"
echo "- query inspection"
echo "- runtime smoke tests"
