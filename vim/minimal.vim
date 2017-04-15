" sensible.vim - Defaults everyone can agree on
" Maintainer:   Tim Pope <http://tpo.pe/>
" Version:      1.1
if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set complete-=i
set smarttab

set nrformats-=octal

" http://stackoverflow.com/questions/24102660/vim-map-esc-without-affecting-terminal-control-characters
set nocp                     " life's too short for pure vi-compatibility mode
set timeout ttimeout         " enable separate mapping and keycode timeouts
set timeoutlen=250           " mapping timeout 250ms  (adjust for preference)
set ttimeoutlen=20           " keycode timeout 20ms

" set incsearch
" Use <C-N> to clear the highlighting of :set hlsearch.
if maparg('<C-N>', 'n') ==# ''
  nnoremap <silent> <C-N> :nohlsearch<CR><C-N>
endif

set laststatus=2
set wildmenu

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if has('path_extra')
  setglobal tags-=./tags tags^=./tags;
endif

if &shell =~# 'fish$'
  set shell=/bin/bash
endif

set autoread
set fileformats+=mac

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux'
  set t_Co=16
endif

" https://raw.githubusercontent.com/rstacruz/vim-opinion/master/plugin/opinion.vim
" if exists('g:loaded_rstacruz_vim_opinion') || &compatible
"   finish
" else
"   let g:loaded_rstacruz_vim_opinion = 1
" endif

"
" Options
"
set hidden                      "hid:   don't care about closing modified buffers
set winminheight=0              "wmh:   allow showing windows as just status bars
" set nowrap                      "       soft-wrapping is off by default

"
" Folding
"
set foldmethod=syntax           "fdm:   fold by the indentation by default
set foldnestmax=10              "fdn:   deepest fold is 10 levels
set nofoldenable                "nofen: don't fold by default
set foldlevel=1

"
" Search
"
set incsearch                   "is:    automatically begins searching as you type
set ignorecase                  "ic:    ignores case when pattern matching
set smartcase                   "scs:   ignores ignorecase when pattern contains uppercase characters
set hlsearch                    "hls:   highlights search results; ctrl-n or :noh to unhighlight
set gdefault                    "gd:    Substitute all matches in a line by default

"
" Programming
"
" syntax on                       "syn:   syntax highlighting
set cindent                     "cin:   enables automatic indenting c-style
set cinoptions=l1,j1            "cino:  affects the way cindent reindents lines
set showmatch                   "sm:    flashes matching brackets or parenthasis
set matchtime=3                 "mat:   How long to flash brackets

"
" Tabs
"
set tabstop=2                   "ts:    number of spaces that a tab renders as
set shiftwidth=2                "sw:    number of spaces to use for autoindent
set softtabstop=2               "sts:   number of spaces that tabs insert
" set smarttab                    "sta:   helps with backspacing because of expandtab
set expandtab                   "et:    uses spaces instead of tab characters

"
" Backups
"
set nobackup                    "nobk:  in this age of version control, who needs it
set nowritebackup               "nowb:  don't make a backup before overwriting
set noswapfile                  "noswf: don't litter swap files everywhere

map <leader>dr :e ~/Dropbox/Apps/Plaintext\\ 2<cr>
map <leader>zi :e ~/Sites/playground<cr>

set backupdir=~/.vim-backup,.,/tmp
set directory=~/.vim-backup,/tmp

"
" Hud and status info
"

set number                      "nu:    numbers lines
set numberwidth=5               "nuw:   width of number column
set showmode                    "smd:   shows current vi mode in lower left
set showcmd                     "sc:    shows typed commands
set cmdheight=1                 "ch:    make a little more room for error messages
set ttyfast                     "tf:    improves redrawing for newer computers
set lazyredraw                  "lz:    will not redraw the screen while running macros (goes faster)

"
" Encryption
"
if has("cryptv")
  set cryptmethod=blowfish        "cm:    make encryption more secure
endif

"
" Menu compilation
"

" set wildmenu                    "wmnu:  enhanced ed command completion
set wildignore+=*.~             "wig:   ignore compiled objects and backups
set wig+=*.o,*.obj,*.pyc
set wig+=.sass-cache,tmp
set wildmode=longest:full,list:full

" custom mappings
" Remap j and k to act as expected when used on long, wrapped, lines
nnoremap j gj
nnoremap k gk

" change the leader to be a comma vs slash
let mapleader=","

" Map CTRL-E to do what ',' used to do
nnoremap <c-e> ,
vnoremap <c-e> ,

" Maps
" Maps to make handling windows a bit easier
nnoremap <silent><c-h> :wincmd h<CR>
nnoremap <silent><c-j> :wincmd j<CR>
nnoremap <silent><c-k> :wincmd k<CR>
nnoremap <silent><c-l> :wincmd l<CR>
nnoremap <silent><c-b> :wincmd p<CR>

" resize window with direction
nnoremap<silent><F9>  :vertical resize -10<CR>
" nnoremap <silent><C-F10> :resize -10<CR>
nnoremap <silent><F10> :vertical resize +80<CR>
nnoremap <silent><F8> :vertical resize -100<CR>
" nnoremap <silent><C-F11> :resize +10<CR>
nnoremap <silent><C-F12> :vertical resize +10<CR>
nnoremap <silent><leader>cc :close<CR>
nnoremap <silent><leader>cw :cclose<CR>
nnoremap <silent><leader>ml <C-W>L
nnoremap <silent><leader>mk <C-W>K
nnoremap <silent><leader>mh <C-W>H
nnoremap <silent><leader>mj <C-W>J 
" Shortcut to opening a virtual split to right of current pane
" Makes more sense than opening to the left
nnoremap <leader>bv :bel vsp<CR>

" Maps for jk to act as Esc
" ino jk <Esc>
inoremap jk <Esc>
" cno jk <c-c>

" <,o> <,O>
nnoremap <silent><leader>o o<esc>
nnoremap <silent><leader>O O<esc>

" Yank
" Y yanks to the end of the line
nnoremap Y y$

" To paste the last YANK, indifferent of previous deleted lines -dd
"-------------------------
" http://www.wealsodocookies.com/posts/yank-ring-a-super-easy-vim-yank-register
"-------------------------
" you can do 0p -- because the numbered register - 0 which always contains text from the most recent yank command (unless you specified a named register).
nnoremap <silent><leader>p "0p

" Turn tabs into spaces
set autoindent

" set the search scan to wrap lines
set wrapscan
:set wrap
:set linebreak
" list disables linebreak
:set nolist
 
" set the forward slash to be the slash of note.  Backslashes suck
set shellslash

" Make command line two lines high
set ch=2

" set visual bell -- i hate that damned beeping
set vb

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions=ces$

" Set the status line the way i like it
" set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%v\ Buf:%n\ [%b][0x%B]

" Hide the mouse pointer while typing
" set mousehide

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" set the gui options the way I like
set guioptions=acq

" This is the timeout used while waiting for another key to be pressed - measured in milliseconds.
" set timeoutlen=500

" Keep some stuff in the history
" set history=1000

set undolevels=1000  " use many muchos levels of undo
" set undofile  " keep a persistent backup file
set undodir=~/.vim-tmp


" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
" set scrolloff=6

" Allow the cursor to go in to -invalid- places
set virtualedit=all

" Disable encryption (:X)
set key=

" Make the command-line completion better
" set wildmenu

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Set the textwidth to be 79 chars
" set textwidth=79

" get rid of the silly characters in window separators
set fillchars=""

" Add ignorance of whitespace to diff
set diffopt+=iwhite
" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

" I don't like it when the matching parens are automatically highlighted
let loaded_matchparen = 1
" Press Ctrl-N to turn off highlighting.
" nmap <silent> <C-N> :silent noh<CR>

" H - in normal mode to go to beginning of line, just like - 0
nnoremap <silent>H 0
" L - in normal mode to go to end of line, just like - $
nnoremap <silent>L $

" Save on ctrl-s
" not working
" map <c-s> <esc>:w<CR>
" imap <c-s> <esc>:w<CR>
"
" Font
" let g:base16_shell_path="~/Sites/playground/base16-builder/output/shell"

set background=dark
" set background=light
" colorscheme base16-atelierforest
" colorscheme base16-atelierplateau
" colorscheme base16-atelierheath
" colorscheme base16-ateliercave
" colorscheme base16-ateliersulphurpool
" colorscheme base16-atelierlakeside
" colorscheme base16-ateliersavanna
" colorscheme base16-atelierseaside
" colorscheme base16-atelierestuary
" colorscheme base16-atelierdune
"
colorscheme gruvbox
"
" Since gruvbox inverts cursor color, it could be awkward to determine current position, when the search is highlighted. To get single cursor color while searching, map these gruvbox functions somewhere after unimpaired is loaded:

" nnoremap <silent> <Leader><Space> :call gruvbox#hls_show()<CR>
" nnoremap <silent> <Leader><Space> <ESC>:call gruvbox#hls_hide()<CR>
" nnoremap <silent> <Leader><Leader><Space> :call gruvbox#hls_toggle()<CR>
"
" nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
" nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
" nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?
"
" https://github.com/morhetz/gruvbox/wiki/Terminal-specific
" if !has("gui_running")
"    let g:gruvbox_italic=0
" endif

" source matchit plugin: type % to jump from begin - to closing tag
source $VIMRUNTIME/macros/matchit.vim
source $VIMRUNTIME/vimrc_example.vim
