return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false, -- main branch does not support lazy-loading
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup()

      -- no auto_install on main: list parsers explicitly (bash added)
      require("nvim-treesitter").install({
        "python", "rust", "c", "lua", "vim", "vimdoc",
        "query", "hyprlang", "bash", "markdown", "markdown_inline",
        "typescript", "tsx", "javascript", "json",
      })

      -- main has no highlight.enable: start treesitter for any
      -- filetype that has a parser available
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          pcall(vim.treesitter.start, args.buf)
        end,
      })

      vim.filetype.add({
        pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
      })
    end,
  },
}
