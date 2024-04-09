return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = false,
    },
    -- autoformat = false,
  },
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- change a keymap
    keys[#keys + 1] = { "gl", '<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>' }
  end,
}
-- return {
--   "neovim/nvim-lspconfig",
--   opts = {
--     inlay_hints = { enabled = false },
--   },
-- }
