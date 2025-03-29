require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"

local lspconfig = require "lspconfig"

local default_servers = { "neocmake", "lemminx", "jsonls", "yamlls"}

-- lsps with default config
for _, lsp in ipairs(default_servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.clangd.setup {
    on_attach = nvlsp.on_attach,
    capabilities = nvlsp.capabilities,
    cmd = { "clangd", "--log=info" }
}
