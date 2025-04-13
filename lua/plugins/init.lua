local nvim_tree_cfg = require "configs.nvim-tree"

return {

    {
        "stevearc/conform.nvim",
        opts = require "configs.conform",
    },

    {
        "zapling/mason-conform.nvim",
        event = "VeryLazy",
        dependencies = { "conform.nvim" },
        config = function()
            require "configs.mason-conform"
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-lspconfig" },
        config = function()
            require "configs.mason-lspconfig"
        end,
    },

    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require "configs.lint"
        end,
    },

    {
        "rshkarin/mason-nvim-lint",
        event = "VeryLazy",
        dependencies = { "nvim-lint" },
        config = function()
            require "configs.mason-lint"
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
        "rcarriga/nvim-notify",
        config = function()
            require "configs.nvim-notify"
        end,
    },

    {
        nvim_tree_cfg,
    },

    {
        "sphamba/smear-cursor.nvim",
        event = "VeryLazy",
        opts = require "configs.smear-cursor",
    },

    {
        "ThePrimeagen/vim-be-good",
        cmd = "VimBeGood"
    },
}
