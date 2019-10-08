" ###### Neovim config file ######
"  ## By: Nicholas Shindler ##

" Helps force plugins to load correctly when it is turned back on below
filetype off

" ###### Plugins #######
call plug#begin('~/.local/share/nvim/plugged')

" Plugins

Plug 'ervandew/supertab'

Plug 'lifepillar/vim-gruvbox8'

Plug 'dense-analysis/ale'

Plug 'ycm-core/YouCompleteMe', { 'do': 'python3 install.py --clangd-completer' }

Plug 'terryma/vim-multiple-cursors'

Plug 'vim-latex/vim-latex'

" Initialize plugin system
call plug#end()

" ###### Plugin Settings ######
"
" ###### Linting with ALE ######
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_linters = {'cpp': ['uncrustify', 'cquery', 'clangd', 'gcc'], 'latex':['chktex','lacheck']}
let g:ale_fixers = {
\	'*': ['remove_trailing_lines','trim_whitespace'],
\ 'cpp': ['uncrustify', 'clang-format', 'cquery'],
\ 'latex': ['chktex', 'lacheck'],
\ 'python': ['flake8', 'pylint']
\}

" ###### YouCompleteMe ######
let g:ycm_global_ycm_extra_conf = '/home/leo/.config/oni/pluggins/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'


" ###### Vim Settings ######
" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Encoding
set encoding=utf-8

" Set formatting stuff
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab

set number

" Set color schemes
set t_Co=16
set background=light
let g:gruvbox_termcolors=16

colorscheme gruvbox8
