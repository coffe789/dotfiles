local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Normal --

  -- Wrapped line navigation
  keymap("n", "j", "gj", opts)
  keymap("n", "k", "gk", opts)
  keymap("n", "gj", "j", opts)
  keymap("n", "gk", "k", opts)

  keymap("n", "z=", "1z=", opts)

  keymap("n", "<C-Enter>", "o<ESC>", opts)
  keymap("n", "<C-s-Enter>", "O<ESC>", opts)

  -- Better window navigation
  keymap("n", "<C-h>", "<C-w>h", opts)
  keymap("n", "<C-j>", "<C-w>j", opts)
  keymap("n", "<C-k>", "<C-w>k", opts)
  keymap("n", "<C-l>", "<C-w>l", opts)

  keymap("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
  keymap("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
	keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)

  keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
  keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)

  keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- file tab

  -- Deletion
  keymap("v", "d", '"_d', opts)
  keymap("v", "dd", '"_dd', opts)

  -- Navigate buffers
  keymap("n", "<S-l>", ":bnext<CR>", opts)
  keymap("n", "<S-h>", ":bprevious<CR>", opts)

  --keymap("n", "<C-d>", ":bd<CR>", opts)

  keymap("n", "S", ":%s/", opts)
  keymap("v", "S", '"0y:<c-u>%s/<c-r>0/', opts)

-- Insert --
  keymap("i", "jk", "<ESC>", opts)
  keymap("i", "kj", "<ESC>", opts)
  keymap("i", "<C-H>", "<C-w>", opts)


-- Visual --
  -- Stay in indent mode
  keymap("v", "<", "<gv", opts)
  keymap("v", ">", ">gv", opts)

  -- Move text up and down
  keymap("v", "<A-j>", ":m .+1<CR>==", opts)
  keymap("v", "<A-k>", ":m .-2<CR>==", opts)

  -- Don't copy upon pasting
  keymap("v", "p", '"_dP', opts)


-- Visual Block --
  -- Move text up and down
  keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
  keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
  keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
  keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)


-- Terminal --
  -- Better terminal navigation
   keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
   keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
   keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
   keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
