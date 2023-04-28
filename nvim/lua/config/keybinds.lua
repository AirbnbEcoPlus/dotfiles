-- Keybinds
vim.g.mapleader = " "

function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend("force", options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<C-h>", "<C-w>h", {desc = "Go to left window"})
map("n", "<C-j>", "<C-w>j", {desc = "Go to lower window"})
map("n", "<C-k>", "<C-w>k", {desc = "Go to upper window"})
map("n", "<C-l>", "<C-w>l", {desc = "Go to right window"})

vim.cmd([[set shiftwidth=4]])
vim.cmd([[set tabstop=4]])
vim.cmd([[set expandtab]])
vim.cmd([[set smartindent]])

map("n", "<leader>xx", "<cmd>TroubleToggle<cr>", {desc = "Open Trouble"})
