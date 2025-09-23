# momovim

My personal Neovim configuration, suited for my needs.

## Features

### Core
- **Plugin Manager**: [lazy.nvim](https://github.com/folke/lazy.nvim)
- **Colorscheme**: [Rose Pine](https://github.com/rose-pine/neovim)
- **Leader**: `<Space>`

### Language Support
- **LSP**: Mason + nvim-lspconfig for language server management
- **Completion**: nvim-cmp with buffer, path, and LSP sources
- **Snippets**: LuaSnip with friendly-snippets
- **Syntax**: Treesitter with auto-install and playground
- **LaTeX**: VimTeX support
- **DBML**: Database markup language support

### Navigation & Search
- **Telescope**: Fuzzy finder
  - `<leader>pf` - Find files
  - `<leader>ps` - Live grep
  - `<leader>pb` - Buffers
  - `<leader>ph` - Help tags
  - `<C-p>`      - Git files
- **Harpoon**: Quick file navigation
  - `<leader>a` - Add file
  - `<C-e>`     - Toggle menu
  - `<C-hjkl>`  - Navigate files 1-4
- **Oil**: Directory browser
  - `-`         - Open parent directory
  - `<leader>.` - Toggle hidden files
  - `gd`        - Toggle file details

### Git Integration
- **Fugitive**: Git commands (`<leader>gs` for status)

### Utilities
- **UndoTree**: Visual undo history (`<leader>u`)
- **TrueZen**: Distraction-free modes
  - `<leader>zn` - Narrow focus
  - `<leader>zf` - Focus mode
  - `<leader>zm` - Minimalist mode
  - `<leader>za` - Ataraxis mode
- **AutoSave**: Automatic file saving
  - `<leader>n`  - Toggle auto-save
- **FloatTerm**: Floating terminal
  - `<F7>`       - Toggle terminal
  - `<leader>gg` - New zsh terminal
- **Comment**: Smart commenting support
- **Lightline**: Minimal statusline with Rose Pine theme
