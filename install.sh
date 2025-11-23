#!/bin/bash

echo ""
echo "====================================="
echo "   Installing MirrorStrike v2.0"
echo "   Developed by Jeffrey Nathaniel"
echo "====================================="
echo ""

# -------------------------------
# Install main MirrorStrike tool
# -------------------------------
echo "[+] Downloading mirrorstrike..."
sudo curl -sSL https://raw.githubusercontent.com/jeffxe/MirrorStrike/main/mirrorstrike -o /usr/bin/mirrorstrike
sudo chmod +x /usr/bin/mirrorstrike

# -------------------------------
# Install autocomplete
# -------------------------------
echo "[+] Setting up autocomplete..."

mkdir -p ~/.zsh/completion
curl -sSL https://raw.githubusercontent.com/jeffxe/MirrorStrike/main/_mirrorstrike -o ~/.zsh/completion/_mirrorstrike

# Add completion to .zshrc if not present
if ! grep -q 'MirrorStrike Zsh Completion' ~/.zshrc; then
    echo "" >> ~/.zshrc
    echo "# MirrorStrike Zsh Completion" >> ~/.zshrc
    echo 'fpath+=("$HOME/.zsh/completion")' >> ~/.zshrc
    echo 'autoload -Uz compinit' >> ~/.zshrc
    echo 'compinit' >> ~/.zshrc
fi

echo ""
echo "[+] MirrorStrike installed successfully!"
echo "[+] Restart your terminal OR run: source ~/.zshrc"
echo "[+] Run: mirrorstrike --help"
echo ""
