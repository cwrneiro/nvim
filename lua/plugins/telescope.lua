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
