local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set("n", "gd", vim.lsp.buf.definition, {desc = "Go to definition"})
vim.keymap.set("n", "gr", vim.lsp.buf.references, {desc = "Find references"})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {desc = "Hover documentation"})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {desc = "Rename symbol"})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {desc = "Code action"})
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {desc = "Show diagnostic"})
vim.keymap.set("n", "<leader>dn", function()
    vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Next diagnostic" })

vim.keymap.set("n", "<leader>nh", "<cmd>nohlsearch<CR>", {
    desc = "Clear search highlight",
})

vim.keymap.set("n", "<leader>hh", function()
    local filename = vim.fn.expand("%:t")

    vim.api.nvim_buf_set_lines(0, 0, 0, false, {
        "<?php",
        "",
        "/*",
        " * Copyright (c) 2026 Andrea Peverelli",
        " * https://github.com/andreapeverelli/.git",
        " *",
        " * SPDX-License-Identifier: GPL-3.0-only",
        " */",
        "",
        "declare(strict_types=1);",
        "",
        "namespace AndreaPeverelli\\;",
        "",
    })
end, { desc = "Insert file header" })
