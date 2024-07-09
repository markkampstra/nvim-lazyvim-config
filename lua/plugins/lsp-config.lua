local lspconfig = require("lspconfig")

return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = false,
    },
    -- autoformat = false,
    servers = {
      rubocop = {
        -- See: https://docs.rubocop.org/rubocop/usage/lsp.html
        cmd = { "bundle", "exec", "rubocop", "--lsp" },
        root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
      },
      solargraph = {
        cmd = { "bundle", "exec", "solargraph", "stdio" },
        useBundler = true
      },
    },
  },
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- change a keymap
    keys[#keys + 1] = { "gl", '<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>' }
  end,
}
-- local nvim_lsp = require("lspconfig")
--  nvim_lsp.solargraph.setup {
--      root_dir = nvim_lsp.util.root_pattern("Gemfile", ".git", "."),
--      settings = {
--          solargraph = {
--              useBundler = true
--          }
--      }
--  }
-- return {
--   "neovim/nvim-lspconfig",
--   opts = {
--     inlay_hints = { enabled = false },
--   },
-- }
