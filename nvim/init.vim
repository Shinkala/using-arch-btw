" Nvim Settings

set number
set relativenumber
set autoindent
set mouse=a
set noswapfile
set hlsearch
set ignorecase
set incsearch
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

syntax on
inoremap jk <ESC>

" Airline Config

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" NerdTree Settings

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Colorscheme

set background=dark
set termguicolors
colorscheme catppuccin
let g:deepspace_italics=1
let g:airline_theme='catppuccin'

nnoremap <Leader>n :colorscheme nord<CR>
nnoremap <Leader>d :colorscheme deep-space<CR>

" Coc autocompletion

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"                        
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" After doing a yarn build command, type this command is 
" neovim :call coc#util#install()

" Tagbar 

nmap <F8> :TagbarToggle<CR>

" LaTeX Config

let g:tex_flavor='latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
nmap <Leader>ll <Plug>(vimtex-compile)
nmap <Leader>lv <Plug>(vimtex-view)
nmap <Leader>lr <Plug>(vimtex-reverse-search)
let g:vimtex_compiler_method='latexmk'

" UltiSnips setup

let g:UltiSnipsExpandTrigger = "²"
let g:UltiSnipsJumpForwardTrigger = "²"
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEnableSnipMate = 1
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips"
let g:UltiSnipsSnippetDirectories = ["~/.config/nvim/UltiSnips"]

" Make sure to have python3 package for nvim, if not, do pip install neovim

" For Inkscape figure

inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

" Nvim Plugin



call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/lervag/vimtex'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/SirVer/ultisnips/'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

set encoding=UTF-8

call plug#end()

