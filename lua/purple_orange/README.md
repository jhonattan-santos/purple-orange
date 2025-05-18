# Purple Orange Neovim Theme (Lush)

Welcome! This is a port of the Purple Orange (VS Code) theme for Neovim, built with [lush.nvim](https://github.com/rktjmp/lush.nvim).

---

## 🚀 Step-by-step Installation for Beginners

### 1. Install a Plugin Manager (if you don't have one)

If you're new to Neovim, you need a plugin manager to install themes and plugins. The easiest for beginners is **paq-nvim**.

Open your terminal and run:

```sh
git clone https://github.com/savq/paq-nvim.git ~/.local/share/nvim/site/pack/paqs/start/paq-nvim
```

### 2. Add lush.nvim to your plugins

Open (or create) the file `~/.config/nvim/init.lua` and add:

```lua
require "paq" {
  "savq/paq-nvim",      -- Paq itself
  "rktjmp/lush.nvim",   -- Lush for themes
  -- You can add more plugins here!
}
```

Now, open Neovim and run:

```
:PaqInstall
```

This will install lush.nvim for you!

---

### 3. Clone this theme

Back in your terminal:

```sh
git clone https://github.com/jhonattan-santos/purple-orange.git
cd purple-orange/lua/purple_orange
```

---

### 4. Automatic install (recommended!)

Just run:

```sh
bash install.sh
```

This will copy the theme to your Neovim config and set everything up for you.

---

### 5. Manual install (if you want to customize)

- Copy `theme.lua` to `~/.config/nvim/lua/purple_orange/theme.lua` (create folders if needed).
- Create a file at `~/.config/nvim/colors/purple_orange.lua` with this content:
  ```lua
  require("lush")(require("purple_orange.theme"))
  ```

---

### 6. Activate the theme in Neovim

Open Neovim and run:

```
:colorscheme purple_orange
```

Or add this to your `init.lua` to always start with the theme:

```lua
vim.cmd.colorscheme("purple_orange")
```

---

## 🎉 That's it!

Enjoy your new chill Purple Orange theme! If you have any questions, feel free to open an issue or ask for help.

---

## About

- Ported from [Purple Orange Theme for VS Code](https://github.com/jhonattan-santos/purple-orange)
- Built with [lush.nvim](https://github.com/rktjmp/lush.nvim)

## License

MIT
