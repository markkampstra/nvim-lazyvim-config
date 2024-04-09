return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  keys = {
    { "<leader>F", "<cmd>Telescope live_grep theme=ivy<cr>", desc = "Live grep" },
    { "<leader>k", "<cmd>Telescope grep_string<cr>", desc = "Grep string" },
  },
  opts = {
    -- this is the same opts one passes to the setup() function
    defaults = {
      -- default configs
    },
    pickers = {},
    extensions = {},
  },
}
