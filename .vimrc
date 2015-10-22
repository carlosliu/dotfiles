" Use Vim settings, rather than Vi Settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible


" Determine the OS and Computer
if has("win32")
    let g:OS = 'windows'
elseif has("unix")
    let g:OS = system('uname')
    if substitute(g:OS, '\n', '', '') == 'Darwin'
        let g:OS = 'osx'
        let g:Computer = substitute(system('uname -n'), '\n', '', '')
    endif
endif


" ================ Vundle plugin ================
filetype off                    " required to use Vundle

" To install Vundle plugin
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
try
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " let Vundle manage Vundle (required!)
    Plugin 'VundleVim/Vundle.vim'

    " colorschemes
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'nanotech/jellybeans.vim'
    Plugin 'sickill/vim-monokai'
    "Plugin 'tpope/vim-vividchalk'
    Plugin 'tomasr/molokai'
    "Plugin 'nelstrom/vim-mac-classic-theme'
    Plugin 'jnurmine/Zenburn'
    Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}

    " language specific
    "Plugin 'tpope/vim-haml'
    "Plugin 'tpope/vim-rails'
    Plugin 'tpope/vim-markdown'
    Plugin 'nelstrom/vim-markdown-folding'
    "Plugin 'plasticboy/vim-markdown'
    "Plugin 'uarun/vim-protobuf'
    "Plugin 'Blackrush/vim-gocode'
    "Plugin 'fatih/vim-go'
    Plugin 'honza/dockerfile.vim'
    Plugin 'elzr/vim-json'
    Plugin 'kchmck/vim-coffee-script'
    Plugin 'pangloss/vim-javascript'
    Plugin 'mxw/vim-jsx'        " depends on pangloss/vim-javascript
    Plugin 'leafgarland/typescript-vim'
    "Plugin 'LaTeX-Box-Team/LaTeX-Box'
    Plugin 'groenewege/vim-less'
    "Plugin 'evanmiller/nginx-vim-syntax'
    "Plugin 'adimit/prolog.vim'
    Plugin 'jimenezrick/vimerl'
    Plugin 'elixir-lang/vim-elixir'
    Plugin 'mattreduce/vim-mix'
    "Plugin 'carlosgaldino/elixir-snippets'
    "Plugin 'digitaltoad/vim-jade'
    "Plugin 'tclem/vim-arduino'
    "Plugin 'sudar/vim-arduino-syntax'
    "Plugin 'toyamarinyon/vim-swift'
    "Plugin 'lukerandall/haskellmode-vim'
    "Plugin 'enomsg/vim-haskellConcealPlus'
    "Plugin 'derekwyatt/vim-scala'
    "Plugin 'rust-lang/rust.vim'

    " quick generation of HTML
    "Plugin 'mattn/emmet-vim'
    "Plugin 'gregsexton/MatchTag'
    "Plugin 'Valloric/MatchTagAlways'

    " enchaned Vim operations
    "Plugin 'tpope/vim-sensible'        " Sensible default vim setting
    "Plugin 'tpope/vim-abolish'
    Plugin 'tpope/vim-commentary'
    Plugin 'tpope/vim-endwise'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-speeddating'
    Plugin 'tpope/vim-surround'
    "Plugin 'tpope/vim-vinegar'
    "Plugin 'tpope/vim-projectionist'
    "Plugin 'tommcdo/vim-exchange'
    "Plugin 'easymotion/vim-easymotion'  " improve vim movement

    Plugin 'ap/vim-css-color'
    "Plugin 'hail2u/vim-css3-syntax'
    "Plugin 'jacekd/vim-iawriter'
    "Plugin 'laktek/distraction-free-writing-vim'
    Plugin 'luochen1990/rainbow'

    " app integration
    Plugin 'jpalardy/vim-slime'
    Plugin 'tpope/vim-fugitive'
    Plugin 'mhinz/vim-signify'
    Plugin 'rking/ag.vim'       " The Silver Search - A better grep/ack
    "Plugin 'dyng/ctrlsf.vim'
    "Plugin 'mileszs/ack.vim'
    "Plugin 'Valloric/YouCompleteMe'
    Plugin 'wakatime/vim-wakatime'
    "Plugin 'christoomey/vim-tmux-navigator'    " have tmux play nice with vim
    "Plugin 'vim-scripts/LanguageTool'      " grammer checker
    "Plugin 'editorconfig/editorconfig-vim'
    Plugin 'scrooloose/syntastic'

    " Dash Plugins, used for looking up documentation on OS X
    if g:OS == 'osx'
        Plugin 'rizzatti/dash.vim'
    endif

    " Snippets
    if v:version >= 704
        Plugin 'SirVer/ultisnips'   " requires +python support
    endif
    Plugin 'honza/vim-snippets'

    " misc
    "Plugin 'ehamberg/vim-cute-python'
    Plugin 'bling/vim-airline'
    "Plugin 'Townk/vim-autoclose'
    Plugin 'Raimondi/delimitMate'
    Plugin 'kien/ctrlp.vim'
    Plugin 'majutsushi/tagbar'
    Plugin 'scrooloose/nerdtree'
    "Plugin 'spolu/dwm.vim'
    Plugin 'tmhedberg/matchit'
    "Plugin 'DrawIt'
    Plugin 'godlygeek/tabular'
    "Plugin 'terryma/vim-expand-region'
    "Plugin 'triglav/vim-visual-increment'  " make visual C-A work properly
    "Plugin 'ervandew/supertab'

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
set list!                       " do not show “invisible” characters by default
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
colorscheme dracula
"colorscheme solarized
"let g:solarized_termtrans=1
"colorscheme jellybeans
"let g:jellybeans_use_lowcolor_black=0
syntax on                       " enable syntax highlighting


" ================ Indentation ================
set binary      " 'binary' must be set before expandtab
set noeol       " Don’t add empty newlines at the end of files

set autoindent
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround


" ================ Search options ================
set hlsearch                    " highlight searches
set incsearch                   " highlight dynamically as pattern is typed
set ignorecase                  " ignore case of searches
set smartcase                   " smart override 'ignorecase'


" ================ Scrolling ================
set scrolloff=3                 " start scrolling when 3 lines away from margins
"set sidescroll=1


" ================ Completion ================
set wildmode=list:longest
set wildmenu                    " enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~     " stuff to ignore when tab completing
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
set wildignore+=*.wav,*.mp3,*.ogg
set wildignore+=*.swp,*.bak


" ================ Mapping ================
" Change mapleader
let mapleader=","

" Toggle paste mode
nmap <leader>p :set paste!<CR>

" Toggle `set list` to show invisible chars
nmap <leader>l :set list!<CR>

" clear search highlights easily
"nmap <silent> <leader>/ :let @/=""<CR>
nmap <leader>/ :nohlsearch<CR>

""" Coffee Script Compilation
" Compile the current file into a vertcally split screen
"map <Leader>cs <esc>:CoffeeCompile vert<cr>"

""" NERDTree Mappins
" Open Nerd Tree with <Leader>n
map <Leader>n <esc>:NERDTreeToggle<cr>
" Reveal current file in NERDTree with <Leader>r
map <Leader>r <esc>:NERDTreeFind<cr>"

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

" Bind j/k to move down/up by one screen row, not linewise
nnoremap j gj
nnoremap k gk

" Emacs style keybinding on command line
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-g>  <C-c>

" ===== vim-json customize
let g:vim_json_syntax_conceal = 0

" ===== delimitMate setting
let delimitMate_expand_cr = 1

" ===== Rainbow parentheses
let g:rainbow_active = 1

" ===== CtrlP setting
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

" ===== airline config
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Require powerline patched fonts
"   * set Non-ASCII font in iTerm2
"   * set guifont in .gvimrc
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
if g:airline_powerline_fonts != 1
    " unicode symbols
    let g:airline_left_sep = ''
    let g:airline_right_sep = ''
    "let g:airline_left_sep = '»'
    "let g:airline_right_sep = '«'
    "let g:airline_left_sep = '▶'
    "let g:airline_right_sep = '◀'
    "let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.branch = '⑂'
    let g:airline_symbols.linenr = '␊'
    "let g:airline_symbols.linenr = '␤'
    "let g:airline_symbols.linenr = '¶'
    "let g:airline_symbols.crypt = '🔒'
    let g:airline_symbols.whitespace = 'Ξ'
endif
"let g:airline_left_alt_sep = '|'
"let g:airline_right_alt_sep = '|''
let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'

" ===== UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" ===== SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
" show the error list automatically
let g:syntastic_auto_loc_list=1
" mark syntax errors with :signs
let g:syntastic_enable_signs=1
" automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"don't care about warnings
"let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

let g:syntastic_javascript_checkers = [ 'eslint' ]



" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Allow cursor keys in insert mode
set esckeys
" Optimize for fast terminal connections
set ttyfast

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

if has("autocmd")
    augroup load_vim
        autocmd!
        " Use relative line numbers
        if exists("&relativenumber")
            set relativenumber
            au BufReadPost * set relativenumber
        endif
        " When editing a file, always jump to the last known cursor position
        autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif
        " Auto reload VIM configuration after saving
        " http://stackoverflow.com/a/2403926
        autocmd BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC |
                    \ if has('gui_running') | so $MYGVIMRC | endif
    augroup END

    " Enable file type detection
    "filetype on

    " Treat .md files as Markdown
    "autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif " has("autocmd")