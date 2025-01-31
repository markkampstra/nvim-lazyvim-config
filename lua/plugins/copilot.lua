return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  opts = {
    panel = {
      enabled = true,
      auto_refresh = false,
      keymap = {
        jump_prev = "[[",
        jump_next = "]]",
        accept = "<CR>",
        refresh = "gr",
        open = "<M-CR>"
      },
      layout = {
        position = "bottom", -- | top | left | right
        ratio = 0.4
      },
    },

    suggestion = {
      enabled = true,
      auto_trigger = false,
      debounce = 75,
      keymap = {
        accept = "<C-l>",
        accept_word = false,
        accept_line = false,
        next = "<M-]>",
        prev = "<M-[>",
        open = "<M-?>"
        -- dismiss = "<C-]>",
        -- open = "<C-k>",
        -- refresh = "<M-r>",
        -- accept = "<C-l>",
        -- accept_word = false,
        -- accept_line = false,
        -- next = "<M-]>",
        -- prev = "<M-[>",
        -- dismiss = "<M-/>",
      }
    }
  }
}
