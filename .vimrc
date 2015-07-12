execute pathogen#infect()
syntax on
filetype  on
filetype indent plugin on
set number
set smartindent
set smarttab
set autoindent
filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab
set sts=4

"""autocmd vimenter * NERDTree"""

"""This command is to make comma into leader for nerdtree,taglist quickeys"""
let mapleader = ","

"""These commands are for NERDTree shortcuts"""
nmap <leader>ne :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

"""These commands are for TagList"""
nmap <leader>ta :Tlist<cr>
let Tlist_WinWidth = 32
let Tlist_Use_Right_Window = 1
let Tlist_Ctags_Cmd='"/usr/local/Cellar/ctags/5.8/bin/ctags"'


"""""for code folding"""""

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i us

""""" for quick commenting """""
filetype plugin on


"""""""indent-guides-options""""
"""let g:indent_guides_start_level = 2
"""let g:indent_guides_guide_size = 1
"""colorscheme default
