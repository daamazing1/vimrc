set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
let path='~/vimfiles/bundle'
call vundle#begin(path)
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Bundle 'gmarik/Vundle.vim'
Bundle 'scrooloose/nerdtree'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle 'luochen1990/rainbow'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'MarcWeber/vim-addon-local-vimrc'
Bundle 'walm/jshint.vim'
Bundle 'scrooloose/syntastic.git'
Bundle 'marijnh/tern_for_vim'
Bundle 'ervandew/supertab'
Bundle 'PProvost/vim-ps1'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" vim-javascript
"let javascript_enable_domhtmlcss = 1

" Rainbow
let g:rainbow_active = 1

" NERDTree
nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp']

"Undo, swap files stored under current user
set udf
set udir=~/vimfiles/undo//

set dir=~/vimfiles/swap//
set backupdir=~/vimfiles/backup//

" create the location for the swap, backup and undo files, commented out of
" because of load time.
"silent execute '!mkdir '.$HOME.'\vimfiles\undo' 
"silent execute '!mkdir '.$HOME.'\vimfiles\swap'
"silent execute '!mkdir '.$HOME.'\vimfiles\backup'


set number
set relativenumber
set guioptions -=m
set guioptions -=T
set guifont=Consolas:h10
colorscheme vividchalk
set cursorline
set modelines=0

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

set list
set listchars=tab:»\ ,eol:¬

syntax on
"copy
vmap <C-c> "+ygv"zy`>
"paste (Shift-C to paste after normal cursor, Ctrl-B to paste over visual selection)
nmap <C-b> "zgP
nmap <C-v> "zgp
imap <C-v> <C-r><C-o>z
vmap <C-v> "zp`]
cmap <C-v> <C-r><C-o>z
"copy register

autocmd FocusGained * let @z=@+

" Alt + Arrow movement around windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" map ctrl + s to update
nmap <c-s> :update<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

"Syntax highlighting
autocmd BufNewFile,BufRead *.master set filetype=html

"Turn on onmi-complete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"Supertab settings
let g:SuperTabDefaultCompletionType = "context"
