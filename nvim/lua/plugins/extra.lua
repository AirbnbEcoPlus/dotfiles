return {
	{ "wakatime/vim-wakatime" },
	{
		"andweeb/presence.nvim",
		config = function()
			require("presence").setup({
				main_image = "file",
				neovim_image_text = "Le Seul Vrai Editeur de Texte",
				editing_text = "Edition de %s",
				file_explorer_text = "Surf sur %s",
				git_commit_text = "Commit les changements",
				plugin_manager_text = "Rajoute des plugins INCROYABLE",
				reading_text = "Lit %s",
				workspace_text = "Travail sur %s",
				line_number_text = "Ligne %s sur %s",
			})
		end,
	},
	{
		"xeluxee/competitest.nvim",
		dependencies = "MunifTanjim/nui.nvim",
		config = function()
			require("competitest").setup()
		end,
	},
	{ "alec-gibson/nvim-tetris" },
}
