
local servers = {
	-- "lua-ls",
	"pyright",
	"jsonls",
  "clangd",
  "biome",
  "gopls",
  -- "quick_lint_js",
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

lspconfig.gdscript.setup{
    on_attach = require("coffe.lsp.handlers").on_attach,
    flags = {
      debounce_text_changes = 150,
    },
		capabilities = require("coffe.lsp.handlers").capabilities,
}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("coffe.lsp.handlers").on_attach,
		capabilities = require("coffe.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "coffe.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
