return {
    {
        "stevearc/conform.nvim",
        ft = "php",

        opts = {
            formatters_by_ft = {
                php = { "php_cs_fixer" },
            },

            format_on_save = {
                timeout_ms = 3000,
                lsp_fallback = true,
            },
        },
    },
}
