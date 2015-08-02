" Use Vim settings, rather than Vi Settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible


" ================ Vundle plugin ================
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
    Plugin 'nanotech/jellybeans.vim'
    Plugin 'sickill/vim-monokai'
    "Plugin 'tpope/vim-vividchalk'
    "Plugin 'tomasr/molokai'
    "Plugin 'nelstrom/vim-mac-classic-theme'

    " enhanced file formats
    "Plugin 'tpope/vim-haml'
    "Plugin 'tpope/vim-markdown'
    "Plugin 'nelstrom/vim-markdown-folding'
    Plugin 'plasticboy/vim-markdown'
    "Plugin 'uarun/vim-protobuf'
    "Plugin 'Blackrush/vim-gocode'
    "Plugin 'fatih/vim-go'
    "Plugin 'honza/dockerfile.vim'
    Plugin 'elzr/vim-json'
    "Plugin 'kchmck/vim-coffee-script'
    "Plugin 'adimit/prolog.vim'
    Plugin 'pangloss/vim-javascript'
    Plugin 'mxw/vim-jsx'     " depends on pangloss/vim-javascript
    "Plugin 'LaTeX-Box-Team/LaTeX-Box'
    Plugin 'groenewege/vim-less'
    "Plugin 'evanmiller/nginx-vim-syntax'
    "Plugin 'jimenezrick/vimerl'
    "Plugin 'elixir-lang/vim-elixir'

    " enchaned Vim operations
    "Plugin 'tommcdo/vim-exchange'
    "Plugin 'tpope/vim-repeat'
    "Plugin 'tpope/vim-surround'

    "Plugin 'ervandew/supertab'

    "Plugin 'ap/vim-css-color'
    "Plugin 'hail2u/vim-css3-syntax'
    "Plugin 'jacekd/vim-iawriter'
    "Plugin 'laktek/distraction-free-writing-vim'
    Plugin 'kien/rainbow_parentheses.vim'

    " app integration
    "Plugin 'jpalardy/vim-slime'
    "Plugin 'tpope/vim-fugitive'
    "Plugin 'rking/ag.vim'
    "Plugin 'mileszs/ack.vim'
    "Plugin 'rizzatti/funcoo.vim'
    "Plugin 'rizzatti/dash.vim'
    "Plugin 'Valloric/YouCompleteMe'
    Plugin 'wakatime/vim-wakatime'

    " Snippets
    if v:version > 704
        Plugin 'SirVer/ultisnips'   " requires +python support
        Plugin 'honza/vim-snippets'
    endif

    " misc
    "Plugin 'ehamberg/vim-cute-python'
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

filetype plugin indent on       " required by Vundle


" ================ General config ================
set ruler                       " show the cursor position
set number                      " enable line numbers
set showcmd                     " show the (partial) command as it’s being typed
set showmode                    " show the current mode
set autoread                    " reload files changed outside vim
set laststatus=2                " always show the status line
set title                       " show the filename in the window titlebar
set showbreak=…                 " show softwarpped continuing line
set cursorline                  " highlight current line
set hidden                      " buffer becomes hidden when it is abandoned
set mouse=a                     " enable mouse in all modes
set visualbell                  " no sound
set noerrorbells                " disable error bells
set nostartofline               " don’t reset cursor to start of line when moving around.
set backspace=indent,eol,start  " allow backspace in insert mode

" Show “invisible” characters
set list listchars=tab:⇥\ ,trail:␣,eol:↩,nbsp:␣,extends:…,precedes:…
"""set list listchars=trail:·,tab:»·
"""set list listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

" Keep longer history for commands and serach patterns
set history=1000
set undolevels=1000

" Respect modeline in files
set modeline
set modelines=4

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure


" ================ Environment setting ================
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
  set nobomb
endif
if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
  set ambiwidth=double
endif


" ================ Color theme ================
set background=dark
"colorscheme solarized
"let g:solarized_termtrans=1
colorscheme jellybeans
"let g:jellybeans_use_lowcolor_black=0
syntax on                       " enable syntax highlighting


" ================ Indentation ================
set autoindent
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround


" ================ Search options ================
set hlsearch    " highlight searches
set incsearch   " highlight dynamically as pattern is typed
set ignorecase  " ignore case of searches
set smartcase   " smart override 'ignorecase'
set gdefault    " add the g flag to search/replace by default


" ================ Scrolling ================
set scrolloff=3 " start scrolling when 3 lines away from margins
"set sidescrolloff=10
"set sidescroll=1


" ================ Completion =======================
set wildmode=list:longest
set wildmenu                " enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ " stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=*.class
set wildignore+=*.pyc,*.pyo
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.swp,*.bak


" ================ Mapping =======================
" Change mapleader
let mapleader=","

" Toggle `set list` to show invisible chars
nmap <leader>l :set list!<CR>

" clear search highlights easily
"nmap <silent> <leader>/ :let @/=""<CR>
nmap <leader>/ :nohl<CR>

""" Coffee Script Compilation
" Compile the current file into a vertcally split screen
"map <Leader>cs <esc>:CoffeeCompile vert<cr>"

""" NERDTree Mappins
" Open Nerd Tree with <Leader>n
map <Leader>n <esc>:NERDTreeToggle<cr>
" Reveal current file in NERDTree with <Leader>r
map <Leader>r <esc>:NERDTreeFind<cr>"


" ===== Rainbow parentheses
if exists(':RainbowParenthesesToggle')
    au VimEnter * RainbowParenthesesToggle
    au Syntax * RainbowParenthesesLoadRound     " ()
    au Syntax * RainbowParenthesesLoadSquare    " []
    au Syntax * RainbowParenthesesLoadBraces    " {}
endif

" ===== airline config
let g:airline_left_sep=''
let g:airline_right_sep=''
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch='⑂'

" ===== UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" ===== SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1 "show the error list automatically
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
let g:syntastic_auto_loc_list=1
"don't care about warnings
"let g:syntastic_quiet_messages = {'level': 'warnings'}

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Allow cursor keys in insert mode
set esckeys
" Optimize for fast terminal connections
set ttyfast
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

" Don’t show the intro message when starting Vim
set shortmess=atI

" Use relative line numbers
"if exists("&relativenumber")
	"set relativenumber
	"au BufReadPost * set relativenumber
"endif

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
