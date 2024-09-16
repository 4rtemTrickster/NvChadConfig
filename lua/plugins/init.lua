return {
    {
        "stevearc/conform.nvim",
        opts = require("configs.conform"),
    },

    {
        "neovim/nvim-lspconfig",
        event = { "BufWritePre", "BufNewFile" },
        config = function()
            require("configs.lspconfig")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufWritePre", "BufNewFile" },
        config = function ()
            require("configs.treesitter")
        end,
    },
}
