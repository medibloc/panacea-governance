#!/usr/bin/env bash

set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <key-name-or-address> [additional panacead flags]" >&2
  exit 1
fi

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PROPOSAL_FILE="$SCRIPT_DIR/proposal.json"
PANACEAD="${PANACEAD:-panacead}"
FROM="$1"
shift

if grep -q '__PROPOSAL_COMMIT_SHA__' "$PROPOSAL_FILE"; then
  echo "Replace __PROPOSAL_COMMIT_SHA__ in proposal.json before submitting." >&2
  exit 1
fi

"$PANACEAD" tx gov submit-proposal "$PROPOSAL_FILE" \
  --from "$FROM" \
  --chain-id panacea-3 \
  --node https://rpc.gopanacea.org:443 \
  --gas auto \
  --gas-prices 5umed \
  --gas-adjustment 1.5 \
  --broadcast-mode sync \
  "$@"
