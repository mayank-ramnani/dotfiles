syntax on
set nocompatible

set number
set wrap
set ignorecase

packadd! dracula
syntax enable
colorscheme dracula

set smartindent
set expandtab
set tabstop=4
set relativenumber

set colorcolumn=100

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

call plug#end()
