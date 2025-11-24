#!/usr/bin/env bash
set -euo pipefail

# Scan the working tree for merge-conflict markers (<<<<<<<, =======, >>>>>>>)
# at the beginning of a line. This avoids false positives from documentation
# that mentions the markers in inline text.

if rg --hidden --no-heading --line-number --glob '!.git/**' '^(<{7}|={7}|>{7})' .; then
  echo "Merge conflict markers found. Please resolve them before committing." >&2
  exit 1
fi

echo "No merge conflict markers detected."
