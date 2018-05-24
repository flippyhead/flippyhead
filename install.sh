#!/bin/sh

echo "Setting up your Mac..."

# Ask for the administrator password upfront
sudo -v

# Run any scripts in the install directory
for script in ./install/*; do
  [ -f "$script" ] && [ -x "$script" ] && "$script"
done

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos