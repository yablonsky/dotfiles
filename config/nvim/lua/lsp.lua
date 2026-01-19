-- Remove Global Default Key mapping
vim.keymap.del("n", "grn")
vim.keymap.del("n", "gra")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "gO")

-- Create keymapping
-- LspAttach: After an LSP Client performs "initialize" and attaches to a buffer.
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local keymap = vim.keymap
        local lsp = vim.lsp
        local bufopts = { noremap = true, silent = true }

        keymap.set("n", "gr", lsp.buf.references, bufopts)
        keymap.set("n", "gd", lsp.buf.definition, bufopts)
        keymap.set("n", "<leader>rn", lsp.buf.rename, bufopts)
        keymap.set("n", "K", lsp.buf.hover, bufopts)
        -- Navigate to the next diagnostic
        keymap.set('n', ']g', function()
            vim.diagnostic.jump { count = 1, float = true }
        end, {})
        -- Navigate to the previous diagnostic
        keymap.set('n', '[g', function()
            vim.diagnostic.jump { count = -1, float = true }
        end, {})
        keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        -- keymap.set("n", "<leader>f", function()
        --     vim.lsp.buf.format({ async = true })
        -- end, bufopts)
    end
})

-- Auto-format on save
vim.api.nvim_create_autocmd('BufWritePre', {
    callback = function()
        vim.lsp.buf.format({ async = false })
    end
})

vim.lsp.enable('lua_ls')
vim.lsp.enable('ts_ls')
vim.lsp.enable('basedpyright')
vim.lsp.enable('ruff')
