set background=dark

""" GUI
if has("gui_running")
	set guioptions-=T       " no toolbar
	set go-=r               " no right scrollbar
	set go-=l               " no left scrollbar
	set go-=b               " no bottom scrollbar
	set go-=L               " no scrollbar even if split
	set go-=R               " no scrollbar even if split

	" Use the Solarized Dark theme
	colorscheme monokai

	" Don’t blink cursor in normal mode
	set guicursor=n:blinkon0
	if g:airline_powerline_fonts != 1
		"set guifont=Monaco:h14
		set guifont=Menlo:h14
		set linespace=4     " Better line-height
	else
		if g:Computer == 'cello'
			set guifont=Iosevka:h15
		else
			set guifont=Iosevka:h14
		endif
		"set guifont=Source\ Code\ Pro\ for\ Powerline:h14
		"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14
		"set guifont=Inconsolata-g\ for\ Powerline:h14
		"
		" Better line-height for different powerline patched fonts
		" -3 : for Inconsolata-g or -dz font
		"  2 : for DejaVu or Droid Sans Mono series fonts
		"      for Anonymouc Pro and Liberation Mono font
		"  0 : for Iosevka and Source Code Pro font
		set linespace=0
	endif

	" Make MacVim looks cool
	if has("gui_macvim")
		" Enable meta- kind binding for GUI
		set macmeta
		map <M-j> <C-w>j
		map <M-k> <C-w>k
		map <M-h> <C-w>h
		map <M-l> <C-w>l

		" transparent background
		if &background == 'dark'
			"hi normal guibg=black
			"set transparency=5
		endif
	endif
endif
