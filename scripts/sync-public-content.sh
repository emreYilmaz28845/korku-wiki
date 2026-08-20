#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 1 ]]; then
  printf 'Usage: %s /path/to/private/obsidian-vault\n' "$0" >&2
  exit 1
fi

source_root="$1/Projects/Korku"
target_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/content/Projects/Korku"

if [[ ! -d "$source_root" ]]; then
  printf 'Korku source directory not found: %s\n' "$source_root" >&2
  exit 1
fi

# These paths are private, non-canonical, or non-renderable source material.
# They must remain out of the public repository.
rsync -a --delete \
  --exclude='Campaigns.md' \
  --exclude='Campaigns/***' \
  --exclude='Assets/Campaigns/***' \
  --exclude='Bölümler.md' \
  --exclude='Bölümler/***' \
  --exclude='Arşiv/***' \
  --exclude='*.docx' \
  --exclude='*.pdf' \
  --exclude='*.txt' \
  --exclude='.DS_Store' \
  "$source_root/" "$target_root/"
