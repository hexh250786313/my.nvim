call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tomasiser/vim-code-dark'
call plug#end()

set termguicolors
colorscheme codedark

nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

set shiftwidth=2
set softtabstop=2
set nu
set autoindent
set expandtab

set termguicolors

set mouse=a

set ignorecase

syntax on

set hidden

set cursorline

noremap <C-c> "+y
noremap <C-v> "+p
noremap <C-x> "+d

" set diffopt+=context:99999

nnoremap <Leader><Leader>j <C-W>J
nnoremap <Leader><Leader>k <C-W>K
nnoremap <Leader><Leader>h <C-W>H
nnoremap <Leader><Leader>l <C-W>L

nnoremap <silent> <Space>o :CocList outline<CR>

if $TMUX != ''
  set ttimeoutlen=20
elseif &ttimeoutlen > 60 || &ttimeoutlen <= 0
  set ttimeoutlen=60
endif

let g:fugitive_pty = 0
