"""BEGIN VUNDLE"""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" YouCompleteMe
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree' 
" Plugin 'nathanaelkane/vim-indent-guides' 
Plugin 'plasticboy/vim-markdown' 
Plugin 'tpope/vim-commentary' 
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'Yggdroot/indentLine'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
 "To ignore plugin indent changes, instead use:
filetype plugin on

 "Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

 "see :h vundle for more details or wiki for FAQ
 "Put your non-Plugin stuff after this line
"""end VUNDLE"""

"""omnicomplete"""""
"set omnifunc=syntaxcomplete#Complete

"SOLVING THIS ISSUE :
"https://groups.google.com/forum/?hl=en#!searchin/ycm-users/server$20shut$20down/ycm-users/l-d6Wfe-kgk/bNqLD-qz5BsJ
let g:airline#extensions#tabline#enabled = 1
let g:ycm_python_binary_path = 'python'

"make code pretty
let python_highlight_all=1
syntax on
filetype  on
set encoding=utf-8
set number
set smartindent
set smarttab
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set sts=4

"""Set Scroll by page instead of by lines with cursor
set mouse=a
"""Flake8-config  https://github.com/andviro/flake8-vim


"""autocmd vimenter * NERDTree"""

"""This command is to make comma into leader for nerdtree,taglist quickeys"""
let mapleader = ","

"""These commands are for NERDTree shortcuts"""
nmap <leader>ne :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

"""These commands are for TagList"""
nmap <leader>ta :Tlist<cr>
let Tlist_WinWidth = 30
let Tlist_Use_Right_Window = 1
let Tlist_Ctags_Cmd='"/usr/local/Cellar/ctags/5.8_1/bin/ctags"'

"""""for code folding"""""

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i us

"""indent-guides and colorscheme"""
colorscheme default
let g:indentLine_enabled = 1
set ignorecase
let g:indentLine_char = '┆'
" let g:indentLine_color_dark = 8 " (default: 2)
" let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_term = 60
set hlsearch
highlight Search ctermfg=black


"""YouCompleteMe Config"
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax = 1
iabbrev <// </<C-X><C-O>
imap <C-Space> <C-X><C-O>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF


