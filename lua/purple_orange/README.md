# Purple Orange Neovim Theme (Lush)

This theme is a port of Purple Orange (VS Code) for Neovim, built with [lush.nvim](https://github.com/rktjmp/lush.nvim).

## Installation

1. **Install [lush.nvim](https://github.com/rktjmp/lush.nvim):**

   - Using [lazy.nvim](https://github.com/folke/lazy.nvim):
     ```lua
     {
       "rktjmp/lush.nvim"
     }
     ```
   - Or with [packer.nvim](https://github.com/wbthomason/packer.nvim):
     ```lua
     use "rktjmp/lush.nvim"
     ```

2. **Clone this repository:**

   ```sh
   git clone https://github.com/jhonattan-santos/purple-orange.git
   cd purple-orange/lua/purple_orange
   ```

3. **Automatic install (recommended):**

   Run the install script to copy the theme and set up the colorscheme loader:

   ```sh
   bash install.sh
   ```

4. **Manual install (if you want to customize):**

   - Place the `theme.lua` file in `~/.config/nvim/lua/purple_orange/theme.lua` or your preferred folder.
   - Create a file at `~/.config/nvim/colors/purple_orange.lua` with:
     ```lua
     require("lush")(require("purple_orange.theme"))
     ```

5. **Activate the theme in Neovim:**
   ```vim
   :colorscheme purple_orange
   ```
   Or add to your `init.lua`:
   ```lua
   vim.cmd.colorscheme("purple_orange")
   ```

## About

- Ported from [Purple Orange Theme for VS Code](https://github.com/jhonattan-santos/purple-orange)
- Built with [lush.nvim](https://github.com/rktjmp/lush.nvim)

## License

MIT
