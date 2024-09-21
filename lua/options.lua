require("nvchad.options")

local o = vim.o
local opt = vim.opt

o.number = true
o.relativenumber = true

o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

opt.list = true
opt.listchars = {
    eol = "⤶",
    space = "·",
    tab = "»=",
}
vim.opt.guicursor = ""
