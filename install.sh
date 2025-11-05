#!/bin/bash
set -e

echo "🔧 Detecting Package Manager..."

if [ -f /etc/os-release ]; then
  . /etc/os-release
  OS=$ID
elif [ "$(uname)" = "Darwin" ]; then
  OS="darwin"
fi

# Arch Linux
if [ "$OS" = "arch" ] || [ "$OS" = "archlinux" ]; then
  echo "📦 Arch Linux"
  makepkg -si

# macOS
elif [ "$OS" = "darwin" ]; then
  echo "📦 macOS"
  brew tap AzureHound/jelly https://github.com/AzureHound/jelly.git
  brew install jelly

# Apt Package Manager
elif command -v apt &>/dev/null; then
  echo "📦 apt"
  sudo apt install -y debhelper build-essential devscripts
  chmod +x debian/rules
  mkdir -p pkg
  dpkg-buildpackage -us -uc
  mv ../jelly_*.{deb,dsc,tar.gz,buildinfo,changes} pkg/ 2>/dev/null || true
  sudo apt install -y ./pkg/jelly_*.deb

# Fallback to brew if available
elif command -v brew &>/dev/null; then
  echo "📦 brew"
  brew tap AzureHound/jelly https://github.com/AzureHound/jelly.git
  brew install jelly

else
  echo "❌ No supported package manager found"
  exit 1
fi

echo "✅ Installation complete!"

# Check jelly in current shell
if command -v jelly &>/dev/null; then
  jelly -v
else
  echo "🪟 Open a new terminal and run: jelly"
fi
