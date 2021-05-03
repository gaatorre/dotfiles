" Install package manager
call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Install using vim-plug
Plug 'deoplete-plugins/deoplete-clang'
Plug 'dense-analysis/ale'
" Nerdtree
Plug 'scrooloose/nerdtree'
" better statusline
Plug 'vim-airline/vim-airline'
" Git
Plug 'airblade/vim-gitgutter'

call plug#end()

" Ale
let g:ale_linters = {
    \ 'python': ['pylint'],
    \ 'vim': ['vint'],
    \ 'cpp': ['clang'],
    \ 'c': ['clang -Wextra -Werror -Wpedantic']
\}
" custom setting for clangformat

set autoindent 

" Color stuff
syntax on
color desert

" relative number
set number relativenumber

"set tabstop=0
set tabstop=4
set shiftwidth=4
set softtabstop=4

nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>

imap jk <Esc>
imap kj <Esc>
