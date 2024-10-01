-- [[ Basic Keymaps ]]

-- Shorten function name
local keymap = vim.keymap.set

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true

-- Diagnostic keymaps
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

--  Use CTRL+<hjkl> to switch between windows
keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Wrapped line navigation
keymap('n', 'j', 'gj')
keymap('n', 'k', 'gk')
keymap('n', 'gj', 'j')
keymap('n', 'gk', 'k')

-- Navigate buffers
keymap('n', '<S-l>', '<cmd>bnext<CR>')
keymap('n', '<S-h>', '<cmd>bprevious<CR>')

-- Telescope
keymap('n', '<leader>ff', ':Telescope find_files<CR>')
keymap('n', '<leader>fg', ':Telescope live_grep<CR>')

-- Move text up and down
keymap('v', '<A-j>', ':m .+1<CR>==')
keymap('v', '<A-k>', ':m .-2<CR>==')
keymap('x', 'J', ":move '>+1<CR>gv-gv")
keymap('x', 'K', ":move '<-2<CR>gv-gv")
keymap('x', '<A-j>', ":move '>+1<CR>gv-gv")
keymap('x', '<A-k>', ":move '<-2<CR>gv-gv")

-- Misc
keymap('n', 'z=', '1z=')
keymap('n', '<C-Enter>', 'o<ESC>')
keymap('n', '<C-s-Enter>', 'O<ESC>')
keymap('n', '<Esc>', '<cmd>noh<CR>')
keymap('v', 'S', '"0y:<c-u>%s/<c-r>0/') -- (:
keymap('n', 'S', '"_diwP')
keymap('n', '<leader>.', "'[V']>") -- indent what was previously pasted
keymap('n', '<leader>,', "'[V']<")
keymap('n', '[[', '[[zt')
keymap('n', ']]', ']]zt')
keymap('i', 'jk', '<ESC>')
keymap('n', '<C-q>', '<cmd>bd<cr>')

-- [[ Autocommands ]]
-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
