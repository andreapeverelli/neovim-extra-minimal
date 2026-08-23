return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        ft = { "php", "lua", "json", "yaml", "html", "css" },

        opts = {
            ensure_installed = {
                "php",
                "lua",
                "json",
                "yaml",
                "html",
                "css",
            },

            highlight = {
                enable = true,
            },

            indent = {
                enable = true,
            },
        },
    },
}
