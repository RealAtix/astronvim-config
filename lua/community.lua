-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },

  -- Language packs
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.lua" },
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
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },

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
