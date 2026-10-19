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

# Most names are matched case-insensitively. "NADA" (the valuation vendor) is
# matched CASE-SENSITIVELY as the all-caps acronym, so the ordinary Spanish word
# "nada" ("nothing") and "Canada" in the translated /es and /fr pages don't
# false-match. Add new names here as needed.
PATTERN_CI='kelley|\bKBB\b|blue book|edmunds|truecar|cars\.com|cargurus|autotrader|j\.?d\.? *power|carfax|autocheck'
PATTERN_CS='\bNADA\b'

# Only scan published content (HTML + the text discovery files), not this script.
hits_ci=$(grep -rniE "$PATTERN_CI" --include='*.html' --include='*.txt' . 2>/dev/null)
hits_cs=$(grep -rnE  "$PATTERN_CS" --include='*.html' --include='*.txt' . 2>/dev/null)
hits=$(printf '%s\n%s' "$hits_ci" "$hits_cs" | grep -v '^$')

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
