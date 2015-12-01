" 17 Sept 2003

if version >= 500
"version 5.0 commands?
endif


set notitle             "turn off 'thanks for flying vim'
set nobackup		"do not create a backup before overwriting
set nocompatible	"not compatible with vi
set shortmess=atI    	"enable some abbreviations, no intro messsage on start
set autowrite		"auto save files on close
set history=50		"50 lines of command history
set viminfo='20,\"50	"read / write a .viminfo file

set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.class

set path=.,/usr/include/,/usr/include/SDL,/usr/include/linux


"set noerrorbells	"do not ring bell for error messages
set visualbell		"visual flash instead of bell for errors (w/o msgs)
set t_vb=
autocmd GUIEnter * set t_vb= "no epileptic flash!
                             "I don't know what that asterick means.

set ruler	    	"turns on line and column of cursor position
set laststatus=2	"always show a status line
set showcmd		"shows command in status line
set equalalways		"make windows the same size
set eadirection=both
set scrolloff=7		"minimal number of lines to keep above/below cursor

set incsearch		"show search pattern as typed
set hlsearch		"after search is completed, highlight found text
set ignorecase		"ignore case in search patterns
set wrapscan		"searches wrap around file
set smartcase		"overrides ignorecase if search has uppercase chars
set infercase		"infers case for keyword completion
set magic		"for special chars in search patters

set smartindent
set autoindent		"copy indent from previous line
set backspace=2		"allow backspace to del over start of insert
set showmatch		"shows matching bracket
set wrap		"lines longer than width will wrap

set shiftwidth=4	"4 spaced tab for autoindent
set softtabstop=4
set tabstop=8		"8 spaced tab stops
set noexpandtab		"don't expand my tabs into 4 spaces

set shiftround		"rounds indent to multiple of shiftwidth
set textwidth=80	"maximum width of text being inserted
set tildeop

noremap d h
noremap h gj
noremap t gk
noremap n l

noremap e d
noremap l n
noremap L N

noremap Q Vgq

noremap <C-d> ^
noremap <C-h> <C-d>
noremap <C-t> <C-u>
noremap <C-n> $

noremap <C-g> <C-t>
noremap <C-b> <C-]>
noremap <C-f> <C-o>
noremap <C-m> :tn<CR>
noremap <space> <C-d>

noremap <C-w>d <C-w>h
noremap <C-w>h <C-w>j
noremap <C-w>t <C-w>k
noremap <C-w>n <C-w>l

noremap ,b :bN<CR>
noremap ,c :center<CR>
noremap ,g :r ~/.signature<CR>
noremap ,h :nohlsearch<CR>
noremap ,n :bn<CR>
noremap ,r :right<CR>
noremap ,s :source ~/.vimrc<CR>
noremap ,v :e ~/.vimrc<CR>
noremap ,w :only<CR>
noremap ,W :set columns=142<CR>
noremap ,d :make run<CR>

if has( "win32" )
    set helpfile=$VIM/doc/help.txt
    noremap ,v :e $VIM/_vimrc<CR>
    noremap ,s :source $VIM/_vimrc<CR>
else
    noremap ,v :e ~/.vimrc<CR>
    noremap ,s :source ~/.vimrc<CR>
endif

if has( "gui_running" )
    set mousehide
    set guioptions=ai
    set number
    set columns=90

    if has( "gui_win32" )
	set guifont=Lucida_Console:h8
	set lines=77
	behave mswin
	set selectmode=mouse
    elseif has( "gui_gtk" )
	set guifont=Bitstream\ Vera\ Sans\ Mono\ 8
    endif
endif

if has("syntax")
    syntax on
endif

"colo joey


" vim -b : edit binary using xxd-format!
augroup Binary
    au!
    au BufReadPre  *.bin let &bin=1
    au BufReadPost *.bin if &bin | %!xxd
    au BufReadPost *.bin set ft=xxd | endif
    au BufWritePre *.bin if &bin | %!xxd -r
    au BufWritePre *.bin endif
    au BufWritePost *.bin if &bin | %!xxd
    au BufWritePost *.bin set nomod | endif
augroup END
