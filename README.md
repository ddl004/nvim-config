# Neovim Configuration

This is a personal Neovim configuration managed by `lazy.nvim`.

## Installation

1.  Clone this repository into your Neovim configuration directory (usually `~/.config/nvim`):
    ```bash
    git clone git@github.com:ddl004/nvim-config.git ~/.config/nvim
    ```

2.  Start Neovim. `lazy.nvim` will automatically bootstrap itself and install the plugins.

### Prerequisites

-   A recent version of [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim).
-   `git` must be installed for `lazy.nvim` to function.
-   `npm` is required by `markdown-preview.nvim` for its build process.
-   [ripgrep](https://github.com/BurntSushi/ripgrep) is needed for `telescope.nvim`.
-   You must configure `~/.tmux.conf` for `vim-tmux-navigator` to work. Additionally, ensure focus events are on in your configuration file:

```bash
# Let apps (like Neovim) receive focus in/out events
set -g focus-events on
```

### Language Servers (LSP)

This configuration uses `mason.nvim` to manage Language Servers, linters, and formatters.

To install LSPs:
1.  Run `:Mason` in Neovim to open the Mason user interface.
2.  In the Mason window, you can select and install any available language servers (e.g., `lua-language-server`, `pyright`, `gopls`, etc.). `mason-lspconfig.nvim` will then automatically handle their configuration with `nvim-lspconfig`.

## Plugins

Here is a list of the plugins included in this configuration:

| Plugin                                     | Description                                                    |
| ------------------------------------------ | -------------------------------------------------------------- |
| [blink.cmp](https://github.com/saghen/blink.cmp) | A completion engine for Neovim.                                |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | A lightweight and opinionated formatter plugin.                |
| [eyeliner.nvim](https://github.com/jinh0/eyeliner.nvim) | Highlights the current line.                                   |
| [hardtime.nvim](https://github.com/m4xshen/hardtime.nvim) | Helps you learn better movement keys.                          |
| [lazy.nvim](https://github.com/folke/lazy.nvim) | A modern plugin manager for Neovim.                            |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | A blazing fast and easy to configure statusline.               |
| [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) | Markdown preview in your browser.                              |
| [material.nvim](https://github.com/marko-cerovac/material.nvim) | A material design colorscheme.                                 |
| [mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) | Bridges `mason.nvim` with `nvim-lspconfig`.                    |
| [mason.nvim](https://github.com/mason-org/mason.nvim) | A manager for LSPs, DAP servers, linters, and formatters.      |
| [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim) | Smooth scrolling for Neovim.                                   |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Inserts or deletes pairs of brackets, quotes, etc.             |
| [nvim-surround](https://github.com/kylechui/nvim-surround) | Add/change/delete surroundings of text.                        |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Advanced syntax highlighting and more.                         |
| [precognition.nvim](https://github.com/tris203/precognition.nvim) | Shows previews for motions.                                    |
| [smear-cursor.nvim](https://github.com/sphamba/smear-cursor.nvim) | A smear effect for the cursor.                                 |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | A highly extendable fuzzy finder.                              |
| [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) | Seamless navigation between tmux panes and vim splits.         |

## Custom Keymaps

The leader key is set to `\` (backslash).

### General

| Key                 | Action                             | Mode(s)      |
| ------------------- | ---------------------------------- | ------------ |
| `<leader><Right>`   | Increase window width              | Normal       |
| `<leader><Left>`    | Decrease window width              | Normal       |
| `<leader><Up>`      | Increase window height             | Normal       |
| `<leader><Down>`    | Decrease window height             | Normal       |
| `<leader>y`         | Copy to system clipboard           | Normal, Vis. |
| `<leader>p`         | Paste from system clipboard        | Normal, Vis. |
| `<leader>F`         | Format code with `conform.nvim`    | Normal       |
| `<c-p>`             | Toggle Markdown Preview            | Normal       |
| `<c-h>`             | Navigate to left pane (Tmux)       | Normal       |
| `<c-j>`             | Navigate to bottom pane (Tmux)     | Normal       |
| `<c-k>`             | Navigate to top pane (Tmux)        | Normal       |
| `<c-l>`             | Navigate to right pane (Tmux)      | Normal       |
| `<c-\>`             | Navigate to previous pane (Tmux)   | Normal       |

### Telescope

| Key                 | Action                             | Mode(s)      |
| ------------------- | ---------------------------------- | ------------ |
| `<leader>ff`        | Find files                         | Normal       |
| `<leader>fg`        | Live grep                          | Normal       |
| `<leader>fb`        | Find buffers                       | Normal       |
| `<leader>fh`        | Find help tags                     | Normal       |
| `<leader>fz`        | File browser                       | Normal       |

### Language Server Protocol (LSP)

| Key                 | Action                             | Mode(s)      |
| ------------------- | ---------------------------------- | ------------ |
| `gr`                | Show references                    | Normal       |
| `gD`                | Go to declaration                  | Normal       |
| `gd`                | Go to definition                   | Normal       |
| `gi`                | Go to implementation               | Normal       |
| `gt`                | Go to type definition              | Normal       |
| `K`                 | Show documentation (hover)         | Normal       |
| `<leader>ca`        | Show code actions                  | Normal, Vis. |
| `<leader>rn`        | Smart rename                       | Normal       |
| `<leader>D`         | Show buffer diagnostics            | Normal       |
| `<leader>d`         | Show line diagnostics              | Normal       |
| `<leader>rs`        | Restart LSP                        | Normal       |

### Treesitter

| Key                 | Action                             | Mode(s)      |
| ------------------- | ---------------------------------- | ------------ |
| `<c-space>`         | Increment selection                | Normal       |
| `<bs>`              | Decrement selection                | Visual       |
| `[c`                | Go to context                      | Normal       |
