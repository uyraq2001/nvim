return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        cmd = {
          "clangd-11",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--fallback-style=llvm",
        },
      },
    },
  },
}
