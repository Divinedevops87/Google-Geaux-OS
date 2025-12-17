#!/data/data/com.termux/files/usr/bin/bash

set -e

# Quickstart script for setting up the environment to run "Code Execution" walkthrough on Termux

echo "Updating and upgrading Termux packages..."
pkg update
pkg upgrade -y

echo "Installing dependencies..."
pkg install python git -y

# Ensure pip is up-to-date
echo "Upgrading pip..."
pip install -q --upgrade pip

# Install Google GenAI SDK
REQUIRED_PYTHON_PACKAGES="google-genai pandas scikit-learn"
echo "Installing required Python packages: $REQUIRED_PYTHON_PACKAGES"
pip install -q -U $REQUIRED_PYTHON_PACKAGES

# Clone or set up the project
REPO_URL=https://github.com/Divinedevops87/Google-Geaux-OS.git
REPO_DIR=Google-Geaux-OS
echo "Cloning repository $REPO_URL..."
git clone $REPO_URL || echo "Repository already cloned."

cd $REPO_DIR

# Setup complete
echo "Setup is complete. Run example scripts using the Python interpreter in Termux."