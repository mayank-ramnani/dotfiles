" install vimplug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" install dracula
" mkdir -p ~/.vim/pack/themes/start
" cd ~/.vim/pack/themes/start
" git clone https://github.com/dracula/vim.git dracula

set nocompatible

" Theming
if (has("termguicolors"))
set termguicolors
endif

packadd! dracula
syntax enable
colorscheme dracula

" Basic
set number
set nowrap

" Indentation
set tabstop=4
set shiftwidth=4
set expandtab
"set autoindent
set smartindent

" Searching
set ignorecase
set smartcase
set showmatch

" Better backspace
set backspace=eol,start,indent

" Extra
set colorcolumn=100
set wildmenu

" Persistent undo
" set undodir=~/.vim/undodir
" set undofile "redo with ^r

" Custom commands
" remove trailing whitespace
:command RMTRAILWS :%s/\s\+$//e
inoremap jj <ESC>

au BufNewFile,BufRead *.py
            \ set tabstop=4 |
            \ set softtabstop=4 |
            \ set shiftwidth=4 |
            "\ set textwidth=79 |
            \ set expandtab |
            \ set autoindent |
            \ set fileformat=unix

" Enable ALE
"let g:ale_linters = {
"\   'python': ['flake8', 'pylint', 'mypy']
"\}

" Enable ALE linting on file save and text change
"let g:ale_lint_on_save = 1
"let g:ale_lint_on_text_changed = 'always'

" Use black as a fixer
"let g:ale_fixers = {
"\ 'python': ['black'],
"\}

" Automatically fix files on save
"let g:ale_fix_on_save = 0

" Toggle ALE linting with <leader>l
nnoremap <leader>l :ALEToggle<CR>

" Show linting results in a list
"let g:ale_set_loclist = 1

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
Plug 'rust-lang/rust.vim'
Plug 'davidhalter/jedi-vim'
" Plug 'dense-analysis/ale'

call plug#end()
