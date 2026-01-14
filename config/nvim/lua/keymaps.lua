-- define common options
local opts = {
    noremap = true, -- non-recursive
    silent = true,  -- do not show message
}

vim.g.mapleader = " " -- Spacebar
vim.g.maplocalleader = "\\"

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`

-- Global
vim.keymap.set('n', '<leader>q', ':q<CR>', opts)
vim.keymap.set('n', '<leader>Q', ':qa<CR>', opts)
vim.keymap.set('n', '<leader>w', ':w<CR>', opts)
vim.keymap.set('n', '<leader>x', ':x<CR>', opts)

-- Fugitive
vim.keymap.set('n', '<leader>ge', ':Gedit<cr>', opts)
vim.keymap.set('n', '<leader>gr', ':Gread<cr>', opts)
vim.keymap.set('n', '<leader>gR', ':GRemove<cr>', opts)
vim.keymap.set('n', '<leader>gw', ':Gwrite<cr>', opts)
vim.keymap.set('n', '<leader>gb', ':Git blame<cr>', opts)
vim.keymap.set('n', '<leader>gB', ':Git co -b', opts)
vim.keymap.set('n', '<leader>gc', ':Git commit<cr>', opts)
vim.keymap.set('n', '<leader>gg', ':Ggrep', opts)
vim.keymap.set('n', '<leader>gG', ':Ggrep \\W<cword>\\W<cr>', opts)
vim.keymap.set('n', '<leader>gl', ':Gclog<cr>', opts)
vim.keymap.set('n', '<leader>gd', ':Git fetch<cr>', opts)
vim.keymap.set('n', '<leader>gp', ':Git pull<cr>', opts)
vim.keymap.set('n', '<leader>gu', ':Git push<cr>', opts)
vim.keymap.set('n', '<leader>gs', ':Git<cr>', opts)
vim.keymap.set('n', '<leader>gW', ':GBrowse<cr>', opts)

-- Terminal
vim.keymap.set('n', '<leader>tt', ':Tnew<CR>', opts)
vim.keymap.set('n', '<leader>tv', ':vertical Tnew<CR>', opts)
vim.keymap.set('t', '<A-[>', '<C-\\><C-n>', opts)
vim.keymap.set('t', '<A-j>', '<c-\\><c-n><c-w>j', opts)
vim.keymap.set('t', '<A-k>', '<c-\\><c-n><c-w>k', opts)
vim.keymap.set('t', '<A-l>', '<c-\\><c-n><c-w>l', opts)
vim.keymap.set('t', '<A-h>', '<c-\\><c-n><c-w>h', opts)

-- remap add mark due to easyclip plugin
vim.keymap.set('n', 'gm', 'm', opts)
-- m for move (vim-cutlass)
vim.keymap.set('n', 'm', 'd', opts)
vim.keymap.set('x', 'm', 'd', opts)
vim.keymap.set('n', 'M', 'D', opts)
vim.keymap.set('n', 'mm', 'dd', opts)

-- s for substitute (vim-substitute)
vim.keymap.set('n', 's', '<plug>(SubversiveSubstitute)', opts)
vim.keymap.set('n', 'ss', '<plug>(SubversiveSubstituteLine)', opts)
vim.keymap.set('n', 'S', '<plug>(SubversiveSubstituteToEndOfLine)', opts)

-- ripgrep
vim.keymap.set('n', '<leader>v', ':Rg <C-R><C-W><CR>')
vim.keymap.set('n', '<leader>c', ':Rg \\W<C-R><C-W>\\W<CR>')

-- fzf
vim.keymap.set('n', '<leader>E', ':Files<CR>', opts)
vim.keymap.set('n', '<leader>e', ':GFiles<CR>', opts)
vim.keymap.set('n', '<leader>b', ':Buffers<CR>', opts)
-- vim.keymap.set('n', '<leader>a', ':FZFBr<CR>', opts)
-- vim.keymap.set('n', '<leader>A', ':FZFBrRemote<CR>', opts)
vim.keymap.set('n', '<leader>R', ':History<CR>', opts)
vim.keymap.set('n', '<leader>f', ':NvimTreeFindFile<CR>', opts)
vim.keymap.set('n', '<leader>F', ':NvimTreeFindFileToggle<CR>', opts)

-- Better window navigation
vim.keymap.set('n', '<A-h>', '<C-w>h', opts)
vim.keymap.set('n', '<A-j>', '<C-w>j', opts)
vim.keymap.set('n', '<A-k>', '<C-w>k', opts)
vim.keymap.set('n', '<A-l>', '<C-w>l', opts)

-- Resize windows
-- delta: 2 lines
-- vim.keymap.set('n', '<C-H>', ':resize -2<CR>', opts)
-- vim.keymap.set('n', '<C-J>', ':resize +2<CR>', opts)
-- vim.keymap.set('n', '<C-K>', ':vertical resize -2<CR>', opts)
-- vim.keymap.set('n', '<C-L>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
