#!/usr/bin/env bash

set -e

echo "Setting up AI Terminal..."

mkdir -p workspace .claude .codex .gemini .copilot

chown -R "$USER":"$USER" workspace .claude .codex .gemini .copilot

chmod -R u+rwX workspace .claude .codex .gemini .copilot

echo ""
echo "Setup complete."
echo ""
echo "Start with:"
echo "docker compose up --build"
