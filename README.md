# momovim

My personal Neovim configuration, suited for my needs.

## Features

### Core
- **Plugin Manager**: [lazy.nvim](https://github.com/folke/lazy.nvim)
- **Colorscheme**: [Monokai NighTasty](https://github.com/polirritmico/monokai-nightasty.nvim)
- **Leader**: `<Space>`

### Language Support
- **LSP**: Mason + nvim-lspconfig for language server management
  - Auto-installed servers: `rust_analyzer`, `pyright`
  - Additional config: `lua_ls`, `harper_ls`
- **Completion**: nvim-cmp with LSP, buffer, path, and snippet sources
- **Snippets**: LuaSnip with friendly-snippets
- **Syntax**: Treesitter with auto-install and playground
  - Parsers: python, rust, c, lua, vim, vimdoc, query, hyprlang
- **Auto Pairs**: nvim-autopairs with treesitter integration
- **CodeLens**: lsp-lens.nvim showing references, implementations, and git authors
- **LaTeX**: VimTeX support (viewer: zathura)
- **DBML**: Database markup language support

### LSP Keybindings
| Keybinding | Action |
|---|---|
| `gd` | Go to definition |
| `K` | Hover information |
| `<leader>vws` | Workspace symbols |
| `<leader>vd` | Open diagnostic float |
| `[d` / `]d` | Previous / next diagnostic |
| `<leader>vca` | Code actions |
| `<leader>vrr` | Show references |
| `<leader>vrn` | Rename symbol |
| `<C-h>` (insert) | Signature help |

### Completion
| Keybinding | Action |
|---|---|
| `<Tab>` | Confirm selection |
| `<M-Space>` | Trigger completion menu |

### Telescope (Fuzzy Finder)
Image preview supported via `catimg`.

| Keybinding | Action |
|---|---|
| `<leader>pf` | Find files |
| `<leader>ps` | Live grep |
| `<leader>pb` | Buffers |
| `<leader>ph` | Help tags |
| `<C-p>` | Git files |

### Harpoon (Quick File Navigation)
| Keybinding | Action |
|---|---|
| `<leader>a` | Add file |
| `<C-e>` | Toggle menu |
| `<C-h>` | Navigate to file 1 |
| `<C-j>` | Navigate to file 2 |
| `<C-k>` | Navigate to file 3 |
| `<C-l>` | Navigate to file 4 |

### Oil (File Explorer)
Replaces netrw.

| Keybinding | Action |
|---|---|
| `<leader>pv` | Open file explorer |
| `-` | Open parent directory |
| `<leader>.` | Toggle hidden files |
| `gd` | Toggle file details |

### Git Integration
| Keybinding | Action |
|---|---|
| `<leader>gs` | Git status (Fugitive) |

### Utilities
- **Comment**: Smart commenting support
- **Lightline**: Minimal statusline

| Keybinding | Action | Plugin |
|---|---|---|
| `<leader>u` | Toggle undo history | UndoTree |
| `<leader>zn` | Narrow focus | TrueZen |
| `<leader>zf` | Focus mode | TrueZen |
| `<leader>zm` | Minimalist mode | TrueZen |
| `<leader>za` | Ataraxis mode | TrueZen |
| `<leader>n` | Toggle auto-save | AutoSave |
| `<F7>` | Toggle terminal | FloatTerm |
| `<leader>gg` | New zsh terminal | FloatTerm |

### Special Behaviors
- Binary files (images, PDFs) auto-open in system viewer
- Python files use 4-space tabs
- Hyprlang filetype detection for Hyprland configs
