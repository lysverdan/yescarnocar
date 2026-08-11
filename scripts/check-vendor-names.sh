#!/usr/bin/env bash
# ---------------------------------------------------------------------------
# Pre-publish guard: fail if any named valuation provider or marketplace
# appears in site content. Present all value data GENERICALLY — as
# "market listings", "resale values", "used prices", etc. — never a brand.
#
# Run locally before publishing:   bash scripts/check-vendor-names.sh
# Also runs automatically in CI on every push (see .github/workflows/).
# ---------------------------------------------------------------------------
set -uo pipefail
cd "$(dirname "$0")/.." || exit 2

# Case-insensitive. KBB and NADA use word boundaries so "Canada" and stray
# letter runs don't false-match. Add new names here as needed.
PATTERN='kelley|\bKBB\b|blue book|edmunds|truecar|cars\.com|cargurus|autotrader|\bNADA\b|j\.?d\.? *power|carfax|autocheck'

# Only scan published content (HTML + the text discovery files), not this script.
hits=$(grep -rniE "$PATTERN" --include='*.html' --include='*.txt' . 2>/dev/null)

if [ -n "$hits" ]; then
  echo "=================================================================="
  echo " VENDOR-NAME GUARD: FAILED"
  echo " A named valuation provider or marketplace appears in site content."
  echo " Remove it and present the value generically (market/resale data)."
  echo "------------------------------------------------------------------"
  echo "$hits"
  echo "=================================================================="
  exit 1
fi

echo "VENDOR-NAME GUARD: passed — no named valuation providers or marketplaces found."
exit 0
