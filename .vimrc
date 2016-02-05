set t_Co=256
set nu
syntax on
set nocompatible | filetype indent plugin on | syn on
let NERDTreeShowHidden=1
let g:syntastic_javascript_checkers = ['eslint']
colo slate
set background=dark
set expandtab
set shiftwidth=2
set softtabstop=2

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mxw/vim-jsx'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'https://github.com/msanders/snipmate.vim.git'
Plug 'MarcWeber/vim-addon-manager'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'Lokaltog/vim-distinguished'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'wookiehangover/jshint.vim', { 'for': 'javascript' }
Plug 'ternjs/tern_for_vim', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" Add plugins to &runtimepath
call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-k><C-b> :NERDTreeToggle<CR>
