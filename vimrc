scriptencoding utf-8

" Plugin settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " Plugins
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'rust-lang/rust.vim'
    Plugin 'dense-analysis/ale'
    Plugin 'vim-python/python-syntax'
    Plugin 'psf/black'
    Plugin 'Shougo/deoplete.nvim'
    Plugin 'deoplete-plugins/deoplete-rust'
    Plugin 'deoplete-plugins/deoplete-jedi'
    Plugin 'autozimu/LanguageClient-neovim', {'branch': 'next'}
call vundle#end()
filetype plugin indent on

" General settings
set clipboard+=unnamed
set expandtab
set tabstop=4
set shiftwidth=4
set nobackup
set number
set relativenumber
set wildmenu
set title
set smartcase
set incsearch
set showmatch
set belloff=all
set backspace=indent,eol,start
set nowrap
set mouse=a
set clipboard=unnamedplus
set cursorline
set laststatus=2

" Enable syntax highlighting
syntax on

" Enable folding
set foldmethod=syntax
set foldlevelstart=99

" Enable ALE for asynchronous linting
let g:ale_linters = {
\   'python': ['flake8', 'mypy'],
\   'rust': ['cargo']
\}
let g:ale_fixers = {
\   'python': ['black'],
\   'rust': ['rustfmt']
\}
let g:ale_fix_on_save = 1

" Enable deoplete for autocompletion
let g:deoplete#enable_at_startup = 1

" Configure LanguageClient-neovim for LSP support
let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ 'rust': ['rust-analyzer']
\ }

" Appearance settings
colorscheme antares
highlight Terminal guifg=lightgrey guibg=grey20

" Window settings
set columns=80
set lines=40
set cmdheight=2

" Key mappings
"inoremap { {}<LEFT>
"inoremap ( ()<LEFT>
