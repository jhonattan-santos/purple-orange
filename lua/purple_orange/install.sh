#!/bin/bash
# install.sh - Installs the Purple Orange Neovim theme (lush.nvim version)

set -e

# 1. Ensure lush.nvim is installed (user must have a plugin manager configured)
echo "[Purple Orange] Make sure lush.nvim is installed via your plugin manager (lazy.nvim, packer.nvim, etc)."

# 2. Copy theme.lua to user's config, always overwriting
THEME_SRC="$(dirname "$0")/theme.lua"
THEME_DEST="$HOME/.config/nvim/lua/purple_orange/theme.lua"
mkdir -p "$HOME/.config/nvim/lua/purple_orange"
if [ -f "$THEME_DEST" ]; then
  echo "[Purple Orange] Removing existing $THEME_DEST"
  rm "$THEME_DEST"
fi
cp "$THEME_SRC" "$THEME_DEST"
echo "[Purple Orange] theme.lua copied to $THEME_DEST"

# 3. Create or overwrite colorscheme loader
COLORSCHEME_FILE="$HOME/.config/nvim/colors/purple_orange.lua"
mkdir -p "$HOME/.config/nvim/colors"
if [ -f "$COLORSCHEME_FILE" ]; then
  echo "[Purple Orange] Removing existing $COLORSCHEME_FILE"
  rm "$COLORSCHEME_FILE"
fi
echo 'require("lush")(require("purple_orange.theme"))' > "$COLORSCHEME_FILE"
echo "[Purple Orange] Created $COLORSCHEME_FILE"

# 4. Print instructions to activate the theme
echo ""
echo "[Purple Orange] Installation complete!"
echo "To activate, open Neovim and run:"
echo ":colorscheme purple_orange"
echo "Or add to your init.lua:"
echo 'vim.cmd.colorscheme("purple_orange")'
