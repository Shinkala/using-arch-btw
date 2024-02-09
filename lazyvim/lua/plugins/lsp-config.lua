return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "K", false }
    keys[#keys + 1] = { "<leader>hv", vim.lsp.buf.hover }
    keys[#keys + 1] = { "<leader>cr", false }
    keys[#keys + 1] = { "<space>rn", vim.lsp.buf.rename }
  end,
}
