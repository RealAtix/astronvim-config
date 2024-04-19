return {
  "AstroNvim/astrocommunity",

  -- Language packs
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.java", enabled = true }, -- Not worth missing out on IntelliJ, requires JDK-17+
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.html-css" },

  -- Bars and lines
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  -- {
  --   "rebelot/heirline.nvim",
  --   opts = function(_, opts)
  --     local status = require "astronvim.utils.status"
  --
  --     opts.statusline = {
  --       -- statusline
  --       hl = { fg = "fg", bg = "bg" },
  --       status.component.mode { mode_text = { padding = { left = 1, right = 1 } } }, -- add the mode text
  --       status.component.git_branch(),
  --       status.component.file_info { filetype = {}, filename = false, file_modified = false },
  --       status.component.git_diff(),
  --       status.component.diagnostics(),
  --       status.component.fill(),
  --       status.component.cmd_info(),
  --       status.component.fill(),
  --       status.component.lsp(),
  --       status.component.treesitter(),
  --       status.component.nav(),
  --       -- remove the 2nd mode indicator on the right
  --     }
  --
  --     return opts
  --   end,
  -- },

  -- Utils
  { import = "astrocommunity.core-runner.sniprun", enabled = false },
  { import = "astrocommunity.completion.copilot-lua-cmp", enabled = false },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  {
    "todo-comments.nvim",
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Telescope TODOs" },
    },
  },
  -- { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },

  -- Motion
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.nvim-surround", enabled = false },
  { import = "astrocommunity.motion.harpoon" },

  -- Colorschemes
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.nightfox-nvim", enabled = true },
  { import = "astrocommunity.colorscheme.kanagawa-nvim", enabled = true },
  { import = "astrocommunity.colorscheme.catppuccin", enabled = false },
  {
    "nyoom-engineering/oxocarbon.nvim",
  },
  {
    "marko-cerovac/material.nvim",
    init = function() vim.g.material_style = "deep ocean" end,
  },
}
