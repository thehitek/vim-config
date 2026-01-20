set nocompatible
let mapleader = " "

syntax on
filetype plugin indent on

set wrap
set whichwrap+=<,>,h,l
set whichwrap+=<,>,[,]

set linebreak

if has('linebreak')
  set breakindent
endif

set showbreak=↳

set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set hlsearch
set wildmenu

if has('multi_byte')
  nnoremap Ж :
  vnoremap Ж :
endif

nnoremap J mzJ`z
xnoremap <leader>p "_dP

nnoremap q <Nop>
nnoremap <leader>q q

nnoremap <S-Down> <C-d>
vnoremap <S-Down> <C-d>

nnoremap <S-Up> <C-u>
vnoremap <S-Up> <C-u>

inoremap <S-Down> <Esc><C-d>i
inoremap <S-Up>   <Esc><C-u>i

inoremap <S-Right> <C-o>e
inoremap <S-Left>  <C-o>b

if has('terminal')
  tnoremap <Esc> <C-\><C-n>
endif

