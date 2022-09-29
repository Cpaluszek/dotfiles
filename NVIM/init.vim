set number
set relativenumber
syntax on
set mouse=a

set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

set nohlsearch " no highlight search
set incsearch
set noerrorbells

set scrolloff=8

set colorcolumn=100
set signcolumn=yes

call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope.nvim'

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'folke/tokyonight.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lualine/lualine.nvim'

Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
" Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

call plug#end()

colorscheme gruvbox
set termguicolors
set background=dark
highlight Normal guibg=none
set encoding=UTF-8

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

set completeopt-=preview " For No Previews

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

let g:NERDTreeDirArrowExpandable="+"
        let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
"  " :PlugClean :PlugInstall :UpdateRemotePlugins
"  "
"  " :CocInstall coc-python
"  " :CocInstall coc-clangd
"  " :CocInstall coc-snippets
"  " :CocCommand snippets.edit... FOR EACH FILE TYPE
"
" air-line
let g:airline_powerline_fonts = 1
"
"  if !exists('g:airline_symbols')
"      let g:airline_symbols = {}
"      endif
"
"      " airline symbols
"      let g:airline_left_sep = ''
"      let g:airline_left_alt_sep = ''
"      let g:airline_right_sep = ''
"      let g:airline_right_alt_sep = ''
"      let g:airline_symbols.branch = ''
"      let g:airline_symbols.readonly = ''
"      let g:airline_symbols.linenr = ''
"
"      inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
