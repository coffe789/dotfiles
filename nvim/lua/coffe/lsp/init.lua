local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- vim.cmd(":echo 'ohno'") --

require "coffe.lsp.mason"
require("coffe.lsp.handlers").setup()
require "coffe.lsp.null-ls"
