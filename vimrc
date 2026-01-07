set nocompatible
set encoding=utf-8
set number
set relativenumber
set hidden
set mouse=a
set signcolumn=yes
set shiftwidth=4
set tabstop=4
set scrolloff=4
set updatetime=300
set timeout
set ttimeout
set timeoutlen=300
set ttimeoutlen=50
set linebreak
set expandtab
set smartindent

set wrap
set whichwrap+=<,>,h,l

let &t_SI = "\e[6 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"

syntax on
filetype plugin indent on

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
nnoremap <expr> <Up>   v:count ? 'k' : 'gk'
nnoremap <expr> <Down> v:count ? 'j' : 'gj'

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ghifarit53/tokyonight-vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

if has("termguicolors")
    set termguicolors
endif
set background=dark
let g:tokyonight_style = 'night'   " night | storm | moon | day
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent = 1
colorscheme tokyonight

let g:airline_powerline_fonts = 1

let mapleader=" "

vnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>d "+dd
vnoremap <leader>d "+d

nnoremap <Up>    :echo "Use k"<CR>
nnoremap <Down>  :echo "Use j"<CR>
nnoremap <Left>  :echo "Use h"<CR>
nnoremap <Right> :echo "Use l"<CR>

inoremap <C-b> <C-o>b
inoremap <C-w> <C-o>w
inoremap <C-e> <C-o>e

inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>l
inoremap <C-j> <C-o>gj
inoremap <C-k> <C-o>gk

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :Rg<CR>

nnoremap <leader>e :NERDTreeToggle<CR>

nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>

let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\.o$', '\.pyc$', '\.class$']

set completeopt=menuone,noinsert,noselect

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <silent><expr> <S-TAB>
      \ coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> K  :call CocActionAsync('doHover')<CR>
nmap <leader>rn <Plug>(coc-rename)

autocmd BufLeave,FocusLost * silent! wall

