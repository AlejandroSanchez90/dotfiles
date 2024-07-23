#!/bin/bash

if [ ! -d "$HOME/.bun" ]; then
  echo "Installing Bun..."
  curl -fsSL https://bun.sh/install | bash
else
  echo ".bun directory already found, skipping."
fi
