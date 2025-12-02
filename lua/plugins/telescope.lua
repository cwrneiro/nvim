require("telescope").setup {
  defaults = {
    preview = {
      mime_hook = function(filepath, bufnr, opts)
        local is_image = function(filepath)
          local image_extensions = {'png','jpg'}   -- Supported image formats
          local split_path = vim.split(filepath:lower(), '.', {plain=true})
          local extension = split_path[#split_path]
          return vim.tbl_contains(image_extensions, extension)
        end
        if is_image(filepath) then
          local term = vim.api.nvim_open_term(bufnr, {})
          local function send_output(_, data, _ )
            for _, d in ipairs(data) do
              vim.api.nvim_chan_send(term, d..'\r\n')
            end
          end
          vim.fn.jobstart(
            {
              'catimg', filepath  -- Terminal image viewer command
            }, 
            {on_stdout=send_output, stdout_buffered=true, pty=true})
        else
          require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, "Binary cannot be previewed")
        end
      end
    },
  }
}

return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope",
    keys = {
      { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find files" },
      { "<leader>ps", "<cmd>Telescope live_grep<cr>",  desc = "Live grep"  },
      { "<leader>pb", "<cmd>Telescope buffers<cr>",    desc = "Buffers"    },
      { "<leader>ph", "<cmd>Telescope help_tags<cr>",  desc = "Help tags"  },
      { "<C-p>",      "<cmd>Telescope git_files<cr>",  desc = "Git Files"  },
    },
  },
}


