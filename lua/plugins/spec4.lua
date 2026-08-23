return {
    {
        "neovim/nvim-lspconfig",
        ft = "php",

        config = function()
            vim.lsp.enable("phpactor")
        end,
    },
}
