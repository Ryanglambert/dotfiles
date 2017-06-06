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
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree' 
Plugin 'airblade/vim-gitgutter'
Plugin 'plasticboy/vim-markdown' 
Plugin 'tpope/vim-commentary' 
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'taglist.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'Valloric/YouCompleteMe'
Plugin 'dkprice/vim-easygrep'
Plugin 'elzr/vim-json'
" Plugin 'raimondi/delimitmate'
Plugin 'fisadev/vim-isort'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'jiangmiao/auto-pairs'
Bundle 'lepture/vim-jinja'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
 "To ignore plugin indent changes, instead use:
" filetype plugin on

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
" set autoindent
set tabstop=8
set shiftwidth=4
set expandtab
set sts=4

"""Set vim-isort key
let g:vim_isort_map = '<C-i>'


"""This command is to make comma into leader for nerdtree,taglist quickeys"""
let mapleader = ","

"""These commands are for NERDTree shortcuts"""
nmap <leader>ne :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']

"""These commands are for TagList"""
nmap <leader>ta :Tlist<cr>
let Tlist_WinWidth = 35
let Tlist_Use_Right_Window = 1
let Tlist_Ctags_Cmd='"/usr/local/Cellar/ctags/5.8_1/bin/ctags"'

"""""for code folding"""""

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i us

"""indent-guides and colorscheme"""
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

let g:indentLine_enabled = 1
set ignorecase
let g:indentLine_char = '┆'
" let g:indentLine_color_dark = 8 " (default: 2)
" let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_term = 60
set hlsearch
highlight Search ctermfg=black


"""Syntastic Config"
let g:syntastic_check_on_wq = 0
let g:syntastic_python_pylint_post_args="--max-line-length=100"
let g:syntastic_python_flake8_args='--ignore=E501,E225,W391'
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_python_checkers = ['flake8']
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

"""YouCompleteMe Config"
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax = 1
iabbrev <// </<C-X><C-O>
imap <C-Space> <C-X><C-O>
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>

"""Don't Jump After Search
" nnoremap * :keepjumps normal! *``<cr>
nnoremap * :keepjumps normal! mi*`i<CR>

"""" Don't hide json diacritics
let g:vim_json_syntax_conceal = 0

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

"EasyGrep
let g:EasyGrepCommand=1
" let g:EasyGrepOpenWindowOnMatch=0

"""Set python Breakpoints
map <leader>b oimport ipdb; ipdb.set_trace()<esc>

"""Vim no EOL
set binary
set noeol

"""Set Scroll by page instead of by lines with cursor
set mouse=a

