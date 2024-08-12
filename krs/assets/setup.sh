#!/bin/bash

# Check and install python3-venv if not already installed
if ! dpkg -l | grep -q python3-venv; then
    sudo apt update && sudo apt install -y python3-venv
fi

# Create and activate a virtual environment
python3 -m venv myenv

# Print instructions for the user to manually activate the environment
echo "Virtual environment created. To activate it, run:"
echo "source myenv/bin/activate"

# Install necessary Python packages
source myenv/bin/activate
pip install wheel setuptools

# Verify the installation (optional)
echo "Virtual environment activated and packages installed."
