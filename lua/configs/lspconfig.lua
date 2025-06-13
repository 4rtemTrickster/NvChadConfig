require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"

local lspconfig = require "lspconfig"

local default_servers = { "lemminx", "jsonls", "yamlls" }

-- lsps with default config
for _, lsp in ipairs(default_servers) do
    lspconfig[lsp].setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
    }
end

lspconfig.clangd.setup {
    on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
        nvlsp.on_attach(client, bufnr)
    end,
    on_new_config = function(new_config, new_cwd)
        local status, cmake = pcall(require, "cmake-tools")
        if status then
            cmake.clangd_on_new_config(new_config)
        end
    end,
    capabilities = nvlsp.capabilities,
    cmd = {
        "clangd",
        "--background-index",
        "-j=12",
        -- -- "--query-driver=/usr/bin/**/clang-*,/bin/clang,/bin/clang++,/usr/bin/gcc,/usr/bin/g++",
        "--clang-tidy",
        "--clang-tidy-checks=*",
        "--header-insertion=iwyu",
        "--header-insertion-decorators",
        "--completion-style=detailed",
        "--function-arg-placeholders",
        -- "--all-scopes-completion",
        -- "--cross-file-rename",
        -- "--pch-storage=memory",
        "--log=info",
    },
}

lspconfig.neocmake.setup {
    cmd = { "neocmakelsp", "--stdio" },
    filetypes = { "cmake" },
    root_dir = function(fname)
        return lspconfig.util.find_git_ancestor(fname)
    end,
    single_file_support = true,
    on_attach = nvlsp.on_attach,
    init_options = {
        format = { enable = true },
        lint = { enable = true },
        scan_cmake_in_package = true,
    },
}
