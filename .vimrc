set nocompatible
filetype off        " required to use Vundle

" To install Vundle plugin
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

try
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " let Vundle manage Vundle (required!)
    Plugin 'gmarik/Vundle.vim'

    " colorschemes
    Plugin 'altercation/vim-colors-solarized'
    "Plugin 'nanotech/jellybeans.vim'
    Plugin 'sickill/vim-monokai'
    """Plugin 'tpope/vim-vividchalk'
    "Plugin 'tomasr/molokai'
    "Plugin 'nelstrom/vim-mac-classic-theme'

    " enhanced file formats
    """Plugin 'tpope/vim-haml'
    "Plugin 'tpope/vim-markdown'
    "Plugin 'nelstrom/vim-markdown-folding'
    Plugin 'plasticboy/vim-markdown'
    "Plugin 'uarun/vim-protobuf'
    "Plugin 'Blackrush/vim-gocode'
    """Plugin 'fatih/vim-go'
    "Plugin 'riobard/scala.vim'
    """Plugin 'honza/dockerfile.vim'
    Plugin 'elzr/vim-json'
    "Plugin 'kchmck/vim-coffee-script'
    """Plugin 'adimit/prolog.vim'
    Plugin 'pangloss/vim-javascript'
    Plugin 'mxw/vim-jsx'     " depends on pangloss/vim-javascript
    """Plugin 'LaTeX-Box-Team/LaTeX-Box'
    Plugin 'groenewege/vim-less'
    """Plugin 'evanmiller/nginx-vim-syntax'

    " enchaned Vim operations
    """Plugin 'tommcdo/vim-exchange'
    """Plugin 'tpope/vim-repeat'
    """Plugin 'tpope/vim-surround'

    "Plugin 'ervandew/supertab'

    """Plugin 'ap/vim-css-color'
    """Plugin 'hail2u/vim-css3-syntax'
    "Plugin 'jacekd/vim-iawriter'
    "Plugin 'laktek/distraction-free-writing-vim'
    """Plugin 'kien/rainbow_parentheses.vim'

    " app integration
    "Plugin 'jpalardy/vim-slime'
    """Plugin 'tpope/vim-fugitive'
    """Plugin 'rking/ag.vim'
    "Plugin 'mileszs/ack.vim'
    """Plugin 'rizzatti/funcoo.vim'
    """Plugin 'rizzatti/dash.vim'
    "Plugin 'Valloric/YouCompleteMe'

    " Snippets
    Plugin 'SirVer/ultisnips'   " requires +python support
    Plugin 'honza/vim-snippets'

    " misc
    "Plugin 'riobard/vim-cute-python'
    Plugin 'bling/vim-airline'
    Plugin 'Townk/vim-autoclose'
    Plugin 'kien/ctrlp.vim'
    Plugin 'majutsushi/tagbar'
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/syntastic'
    "Plugin 'spolu/dwm.vim'
    Plugin 'tmhedberg/matchit'
    "Plugin 'DrawIt'
    Plugin 'godlygeek/tabular'
    "Plugin 'terryma/vim-expand-region'

    call vundle#end()
catch /E117:/
    " Vundle is not available
endtry

filetype plugin indent on   " required by Vundle

set background=dark
colorscheme solarized
let g:solarized_termtrans=1

" Indentation
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab shiftround
set autoindent

" Allow backspace in insert mode
set backspace=indent,eol,start

set laststatus=2    " always show the status line
""" airline config
let g:airline_left_sep=''
let g:airline_right_sep=''
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch='⑂'

""" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
"if exists("&relativenumber")
	"set relativenumber
	"au BufReadPost * set relativenumber
"endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" show softwarpped continuing line
set showbreak=…

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
"if has("autocmd")
	" Enable file type detection
	"filetype on
	" Treat .md files as Markdown
	"autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
"endif
