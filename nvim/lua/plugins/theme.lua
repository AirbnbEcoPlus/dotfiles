return {
	{
		"navarasu/onedark.nvim",
		config = function()
            require('onedark').setup {
                style = 'darker'
            } 
			vim.cmd([[colorscheme onedark]])
		end,
	},
    {"rktjmp/lush.nvim"},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
                rainbow = {
					enable = true,
					extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
					max_file_lines = nil, -- Do not enable for files with more than n lines, int
				},
			})
		end,
	},
}
