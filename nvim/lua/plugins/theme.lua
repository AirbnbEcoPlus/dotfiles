return {
	{
		"rockyzhang24/arctic.nvim",
		config = function()
			vim.cmd([[colorscheme arctic]])
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
    {
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("hlchunk").setup({

        
    indent = {
        enable = true
    },
    
    })
  end
},
}
