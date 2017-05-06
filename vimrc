set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-rails'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'thoughtbot/vim-rspec'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'sheerun/vim-polyglot'
" Plugin 'vim-syntastic/syntastic'
Plugin 'w0rp/ale'

call vundle#end()            " required
filetype plugin indent on    " required


set number                      " Display line numbers beside buffer
set backspace=indent,eol,start  " Sane backspace behavior
set history=1000                " Remember last 1000 commands
set scrolloff=4                 " Keep at least 4 lines below cursor
set hidden			                " in order to switch between buffers with unsaved change
set cursorline			            " hightlight column and line
set autoindent
set ic
" 1 tab to 2 space for ruby
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set noswapfile

let mapleader = "\<Space>"
map <Leader>sc :sp db/schema.rb<CR>
nmap 0 ^
nmap k gk
nmap j gj
map <C-n> :NERDTreeToggle<CR>

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

let g:jsx_ext_required = 0    " By default, JSX syntax highlighting and indenting will be enabled only for files with the .jsx extension

