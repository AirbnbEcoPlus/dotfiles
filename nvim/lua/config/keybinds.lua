-- Keybinds
vim.g.mapleader = " "
vim.g.cmp_mapping_tab_stop = ''

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

map("n", "<", "<cmd>HopWord<cr>", {desc = "Start Hop"})

map("n", "<leader>h", "<Cmd>BufferPrevious<CR>", {desc = "move to left buffer"})
map("n", "<leader>l", "<Cmd>BufferNext<CR>", {desc = "move to right buffer"})
map("n", "<leader>j", "<Cmd>BufferMovePrevious<CR>",
    {desc = "move the buffer at left"})
map("n", "<leader>k", "<Cmd>BufferMoveNext<CR>",
    {desc = "move the buffer at right"})

map("n", "<leader>w", "<Cmd>BufferClose<CR>", {desc = "move to left buffer"})
function _G.set_terminal_keymaps()
    local opts = {buffer = 0}
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
