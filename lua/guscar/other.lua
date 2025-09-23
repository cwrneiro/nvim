vim.o.number = true
vim.o.relativenumber = true

vim.opt.showmode = false

vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.opt_local.expandtab = false
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
        vim.opt_local.softtabstop = 0
    end,
})

-- Abrir imagem e pdf pelo nvim
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = {"*.png", "*.jpg", "*.jpeg", "*.pdf"},
  callback = function()
    local file = vim.fn.expand("<afile>")
    vim.system({"xdg-open", file})
    vim.cmd('Oil')
    print('Opening external: ', file)
  end,
})

