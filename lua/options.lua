require "nvchad.options"

local o = vim.o
local g = vim.g
local opt = vim.opt

g.have_nerd_font = true

o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

o.number = true
o.relativenumber = true

opt.cursorline = true

opt.scrolloff = 10
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.list = true
opt.listchars = {
    eol = "⤶",
    space = "·",
    tab = "»-",
}

opt.guicursor = "n-v-i-c:block-Cursor"
opt.colorcolumn = "120"
opt.wrap = false

opt.swapfile = false
opt.backup = false


opt.hlsearch = false
opt.incsearch = true
