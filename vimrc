set nocompatible              " be iMproved, required
" filetype off                  " required
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

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
" Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'
Bundle 'Valloric/YouCompleteMe'
Plugin 'Chiel92/vim-autoformat'
Plugin 'altercation/vim-colors-solarized'
Bundle 'moll/vim-node'
Plugin 'jiangmiao/auto-pairs'
Plugin 'airblade/vim-gitgutter'

call vundle#end()            " required
filetype plugin indent on    " required


filetype plugin indent on   " Automatically detect file types
set splitbelow              " Splits window BELOW current window
set splitright              " Open new split on the right
set virtualedit=onemore     " Allow for cursor beyond last character
set number                      " Display line numbers beside buffer
set backspace=indent,eol,start  " Sane backspace behavior
set history=1000                " Remember last 1000 commands
set scrolloff=4                 " Keep at least 4 lines below cursor
set hidden			                " in order to switch between buffers with unsaved change
set cursorline			            " hightlight column and line
set smartindent             " Do smart autoindenting when starting a new line
set autoindent
set pastetoggle=<F12>       " Sane indentation on pastes
set ic
" 1 tab to 2 space for ruby
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set noswapfile
" set clipboard=unnamedplus
syntax enable
set background=dark " solarized setting
colorscheme solarized " solarized setting
set visualbell              " No beeping
set showmode                    " Display the current mode
set ignorecase                          " Case-insensitive searching.
set smartcase                           " But case-sensitive if expression contains a capital letter.
set gdefault                            " The /g flag on :s substitutions by default
set list                                " View tabs, where line ends etc
set ruler

" check one time after 4s of inactivity in normal mode
set autoread
au CursorHold * checktime

" Remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

nmap <silent> <C-s> <Esc>:call ToggleHLSearch()<cr>  " Toggle highlight search with CTRL+S

let mapleader = "\<Space>"
map <Leader>sc :sp db/schema.rb<CR>
nmap 0 ^
nmap k gk
nmap j gj
map <C-n> :NERDTreeToggle<CR>
noremap <C-o> :Autoformat<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap U :echo " < < ===== C H E C K   C A P S   L O C K ===== > > "<CR>

" The Silver Searcher
if executable('ag')
  " Make CtrlP use ag for listing the files. Way faster and no useless files.
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

let g:jsx_ext_required = 0    " By default, JSX syntax highlighting and indenting will be enabled only for files with the .jsx extension

let g:deoplete#enable_at_startup = 1

" Yank text to the OS X clipboard" 将文本复制到OS X剪贴板中
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard 在粘贴OS X剪贴板中的文本时保留缩进
noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>

" fix problem of YouCompleteMe
let g:ycm_path_to_python_interpreter="/usr/local/bin/python"

" Use local vimrc if available {
    if filereadable(expand("~/.vimrc.local"))
        source ~/.vimrc.local
    endif
" }
