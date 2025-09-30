vim.g.mapleader = ' '


vim.o.number = true
vim.o.relativenumber = true


vim.o.ignorecase = true
vim.o.cursorline = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
})

vim.keymap.set("n", "ds", vim.diagnostic.open_float, { desc = "Show Diagnostic"})

