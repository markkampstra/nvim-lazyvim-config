if true then
  return {}
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        solargraph = {
          useBundler = true,
        },
      },
    },
  },
}
