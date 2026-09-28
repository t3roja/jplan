#!/bin/bash

# Install uv
if command -v "uv --version" &> /dev/null; then
    echo "Installing uv"
    curl -LsSf https://astral.sh/uv/install.sh | sh
else
    echo "uv already installed"
fi

# Initialize backend
if [ -d "./backend" ]; then
    echo "Backend already setup"
else
    echo "Setting up backend..."
    uv init backend
fi