-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- Language packs
  { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.python" },

  -- Base pack with basedpyright and ruff
  { import = "astrocommunity.pack.python.base" },
  { import = "astrocommunity.pack.python.basedpyright" },
  { import = "astrocommunity.pack.python.ruff" },

  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.java", enabled = false }, -- Not worth missing out on IntelliJ, requires JDK-17+
  { import = "astrocommunity.pack.go", enabled = true },
  { import = "astrocommunity.pack.elixir-phoenix", enabled = false },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.sql", enabled = false },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.programming-language-support.nvim-jqx" },

  -- Bars and lines
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },

  -- Editing support
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  {
    "todo-comments.nvim",
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Telescope TODOs" },
    },
  },
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.editing-support.undotree" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  -- { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },

  -- Completion
  { import = "astrocommunity.completion.copilot-lua-cmp", enabled = false },

  -- Code runner
  { import = "astrocommunity.core-runner.sniprun", enabled = false },

  -- Diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- Debugging
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },

  -- Test
  { import = "astrocommunity.test.neotest" },

  -- Git
  { import = "astrocommunity.git.gitlinker-nvim" },

  -- Advanced LSP setup
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },

  -- Motion
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.nvim-surround", enabled = false },
  { import = "astrocommunity.motion.harpoon" },

  -- Workflow (learning vim better)
  { import = "astrocommunity.workflow.hardtime-nvim" },
  { import = "astrocommunity.workflow.precognition-nvim" },

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
