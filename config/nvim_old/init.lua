-- vim.opt.compatible = false
-- Works best with completeopt=noselect.
-- vim.o.completeopt = 'noselect'
-- Use CTRL-Y to select an item. |complete_CTRL-Y|
vim.cmd [[set completeopt+=menuone,noselect,popup]]

local nvim_config_base = '~/.config/nvim/'
local scripts = {
  'plugins.vim',
  'config.vim',
  'settings/appearence.vim',
  'settings/fzf.vim',
  'settings/keymap.vim',
  'settings/terminal.vim',
  'settings/vim-fugitive.vim',
}

for _, script in ipairs(scripts) do
  -- print(i, script )
  vim.cmd('source ' .. nvim_config_base .. script)
end

-- vim.api.nvim_create_autocmd('BufWritePre', {
--   callback = function()
--     vim.lsp.buf.format({ async = false })
--   end
-- })

-- vim.lsp.config('*', {
--   settings = {
--     python = {
--       analysis = {
--         autoImportCompletions = true

--       }
--     }
--   }
-- })
-- vim.lsp.enable('zuban')
-- vim.lsp.enable('pylsp')
-- vim.lsp.enable('basedpyright')
-- vim.lsp.enable('ruff')
vim.lsp.enable('pyright')
-- vim.lsp.enable('ty')


-- temp keymaps
-- Rename
vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {})
-- Go to definition
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
-- Navigate to the next diagnostic
vim.keymap.set('n', ']g', function()
  vim.diagnostic.jump { count = 1, float = true }
end, {})
-- Navigate to the previous diagnostic
vim.keymap.set('n', '[g', function()
  vim.diagnostic.jump { count = -1, float = true }
end, {})
-- Format the current buffer
vim.keymap.set('n', '<leader>F', function()
  vim.lsp.buf.format { async = true }
end, {})
-- Example keybindings
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
