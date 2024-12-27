require("config.keybinds")
vim.cmd([[set shell=/bin/zsh]])
vim.cmd([[set termguicolors]])
vim.cmd([[set number]])
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
	spec = {
		-- import plugins
		{ import = "plugins" },
	},
})

require("config.autocomplete")
require("config.debuging")
require("telescope").load_extension("projects")
