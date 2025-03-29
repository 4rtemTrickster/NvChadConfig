local nvim_tree_cfg = require("configs.nvim-tree")

return {
    {
        "stevearc/conform.nvim",
        opts = require "configs.conform",
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require "configs.treesitter"
        end,
    },

    {
        "Civitasv/cmake-tools.nvim",
        config = function()
            require "configs.cmake"
        end,
        lazy = false,
    },

    {
        "mfussenegger/nvim-dap",
        config = function()
            require "configs.nvim-dap"
        end,
    },

    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            require "configs.nvim-dap-ui"
        end,
        lazy = false,
    },

    {
        nvim_tree_cfg
    },
}
