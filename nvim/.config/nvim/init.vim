:set number

call plug#begin()
	Plug 'dracula/vim'

	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-telescope/telescope-fzy-native.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
	Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
	Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

	Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula


" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
	split term://fish
	resize 10
endfunction
nnoremap<c-n> :call OpenTerminal()<CR>


lua << EOF

-- vim.o.list = true
-- vim.o.listchars = "tab:|->,trail:-"


local map = vim.api.nvim_set_keymap
local opts = {noremap = true}

map('i','jj','<Esc>',opts)

require('telescope').setup()
map('n','<leader>ff',':Telescope find_files<CR>',opts)
map('n','<leader>fg',':Telescope live_grep<CR>',opts)

vim.opt.listchars:append("eol:↴")
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
    show_end_of_line = true,
}
EOF
