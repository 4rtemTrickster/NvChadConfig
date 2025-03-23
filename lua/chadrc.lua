-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "chadracula",

    -- hl_override = {
    -- 	Comment = { italic = true },
    -- 	["@comment"] = { italic = true },
    -- },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}

M.mason = {
    command = true,
    pkgs = {
        -- lua
        "lua-language-server",
        "stylua",

        -- c/cpp
        "clangd",
        "clang-format",

        -- cmake
        "cmakelint",
        "cmakelang",
        "neocmakelsp",

        -- yaml
        "yamlfmt",
        "yamllint",
        "yaml-language-server",

        -- json
        "json-lsp",
        "jsonlint",

        -- debugging
        "codelldb",
    },
}

return M
