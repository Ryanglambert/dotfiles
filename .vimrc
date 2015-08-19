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
let Tlist_WinWidth = 30
let Tlist_Use_Right_Window = 1
let Tlist_Ctags_Cmd='"/usr/local/Cellar/ctags/5.8/bin/ctags"'


"""""for code folding"""""

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i us

""""" for quick commenting """""
filetype plugin on

"""indent-guides"""
colorscheme default
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_auto_colors = 0 
let g:indent_guides_guide_size = 1 
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=darkgrey ctermbg=186
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=186
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=darkgrey ctermbg=58
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=58
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=darkgrey ctermbg=230
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=230
set ignorecase
