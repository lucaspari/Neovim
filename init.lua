vim.g.mapleader = " "
require("lucaspari")
require("lucaspari.lspconfig")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>qq", vim.cmd.qa)
vim.keymap.set("n", "<leader>c", ":bd<CR>", { noremap = true, silent = true })
-- Map F2 to go to the next buffer
vim.keymap.set("n", "<F2>", ":bnext<CR>", { noremap = true, silent = true })

-- Map F1 to go to the previous buffer
vim.keymap.set("n", "<F1>", ":bprevious<CR>", { noremap = true, silent = true })
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.cmd(":set number relativenumber")
vim.opt.termguicolors = true
