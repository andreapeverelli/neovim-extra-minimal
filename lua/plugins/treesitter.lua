return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",

        config = function()
            require("nvim-treesitter").setup({})

            require("nvim-treesitter").install({
                "php",
                "lua",
                "json",
                "yaml",
                "html",
                "css",
                "javascript",
            })

            vim.api.nvim_create_autocmd("FileType", {
                pattern = {
                    "php",
                    "lua",
                    "json",
                    "yaml",
                    "html",
                    "css",
                    "javascript",
                },
                callback = function()
                    vim.treesitter.start()
                end,
            })
        end,
    },
}
