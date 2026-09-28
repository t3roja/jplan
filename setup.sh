#!/bin/bash

# Install uv
if command -v uv &> /dev/null; then
    echo "uv already installed"
else
    echo "Installing uv"
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

# Initialize backend
if [ -d "./backend" ]; then
    echo "Backend already setup"
else
    echo "Setting up backend..."
    uv init backend
    cd backend
    uv add django django-ninja
    uv run django-admin startproject config .
fi