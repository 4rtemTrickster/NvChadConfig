local options = {
    ensure_installed = {
        "bash",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
        "cpp",
        "json",
        "xml"
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = {enable = true },
}

require("nvim-treesitter.configs").setup(options)
