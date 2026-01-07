if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible
set encoding=utf-8
set number
set relativenumber
set hidden
set mouse=a
set clipboard=unnamedplus
set updatetime=300
set signcolumn=yes

set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

syntax on
filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ghifarit53/tokyonight-vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

set background=dark
let g:tokyonight_style = 'night'   " night | storm | moon | day
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent = 0
colorscheme tokyonight

let g:airline_powerline_fonts = 1

let mapleader=" "

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>e  :Explore<CR>

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
