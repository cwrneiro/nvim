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
  - Additional config: `lua_ls`
- **Completion**: nvim-cmp with LSP, buffer, path, and snippet sources
- **Snippets**: LuaSnip with friendly-snippets
- **Syntax**: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (`main` branch; requires Neovim 0.12+ and the [`tree-sitter` CLI](https://github.com/tree-sitter/tree-sitter) ≥ 0.26.1 on `PATH` to build parsers)
  - Parsers: python, rust, c, lua, vim, vimdoc, query, hyprlang, bash, markdown, markdown_inline
  - Highlighting via `vim.treesitter.start()` on `FileType`; add new languages to the `install{}` list or run `:TSInstall <lang>`
  - Use Neovim's built-in `:InspectTree` / `:EditQuery` to explore syntax trees
- **Auto Pairs**: nvim-autopairs with treesitter integration
- **CodeLens**: [lensline.nvim](https://github.com/oribarilan/lensline.nvim) showing references, implementations, and git authors
- **LaTeX**: VimTeX support (viewer: zathura)
- **DBML**: Database markup language support
- **Markdown**: [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) in-buffer rendering (headings, bullets, code blocks); needs a Nerd Font for icons

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
| `<leader>md` | Toggle markdown render | RenderMarkdown |

### Special Behaviors
- Binary files (images, PDFs) auto-open in system viewer
- Python files use 4-space tabs
- Hyprlang filetype detection for Hyprland configs
