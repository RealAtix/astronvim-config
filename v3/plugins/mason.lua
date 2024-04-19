-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      -- ensure_installed = { "lua_ls" },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      -- ensure_installed = { "prettier", "stylua" },
      -- Don't use prettier unless required
      -- TODO: further testing required
      handlers = {
        prettierd = function()
          local null_ls = require "null-ls"
          null_ls.register(null_ls.builtins.formatting.prettierd.with {
            condition = function(util)
              return util.root_has_file ".prettierrc"
                or util.root_has_file ".prettierrc.json"
                or util.root_has_file ".prettierrc.js"
            end,
          })
        end,
        eslint_d = function()
          local null_ls = require "null-ls"
          null_ls.register(null_ls.builtins.formatting.eslint_d.with {
            condition = function(util)
              return util.root_has_file "package.json"
                and (util.root_has_file ".eslintrc.json" or util.root_has_file ".eslintrc.js")
            end,
          })
          null_ls.register(null_ls.builtins.diagnostics.eslint_d.with {
            condition = function(util)
              return util.root_has_file "package.json"
                and (util.root_has_file ".eslintrc.json" or util.root_has_file ".eslintrc.js")
            end,
          })
          null_ls.register(null_ls.builtins.code_actions.eslint_d.with {
            condition = function(util)
              return util.root_has_file "package.json"
                and (util.root_has_file ".eslintrc.json" or util.root_has_file ".eslintrc.js")
            end,
          })
        end,
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python" },
    },
  },
}
