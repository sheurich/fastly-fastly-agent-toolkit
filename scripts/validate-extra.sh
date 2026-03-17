#!/usr/bin/env bash
# Repo-specific validation requirements beyond agent-validate defaults.
# agent-validate runs this automatically when present.
set -euo pipefail

errors=0

# This repo must have a Claude plugin manifest
if [[ ! -f ".claude-plugin/plugin.json" ]]; then
    echo "Error: Missing .claude-plugin/plugin.json" >&2
    errors=$((errors + 1))
fi

# This repo must have a skills directory
if [[ ! -d "skills" ]]; then
    echo "Error: Missing skills/ directory" >&2
    errors=$((errors + 1))
fi

if [[ $errors -gt 0 ]]; then
    exit 1
fi
