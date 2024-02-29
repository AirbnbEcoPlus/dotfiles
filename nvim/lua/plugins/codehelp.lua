return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate", -- :MasonUpdate updates registry contents
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                    },
                },
            })
        end,
    },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/nvim-cmp" },
    { "jose-elias-alvarez/null-ls.nvim" },
    { "puremourning/vimspector" },
    { "L3MON4D3/LuaSnip" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "jay-babu/mason-null-ls.nvim" },
    { "hrsh7th/cmp-vsnip" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-buffer" },
}
