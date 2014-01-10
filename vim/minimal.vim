set nocompatible
filetype plugin on

filetype on
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
" nnoremap <silent><C-F11> :resize +10<CR>
nnoremap <silent><C-F12> :vertical resize +10<CR>
nnoremap <silent><leader>cc :close<CR>
nnoremap <silent><leader>cw :cclose<CR>
nnoremap <silent><leader>ml <C-W>L
nnoremap <silent><leader>mk <C-W>K
nnoremap <silent><leader>mh <C-W>H
nnoremap <silent><leader>mj <C-W>J
 
" Maps for jk to act as Esc
ino jk <esc>
cno jk <c-c>

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

" UI stuff
" Tabstops are 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Turn tabs into spaces
set expandtab
set autoindent

" set the search scan to wrap lines
set wrapscan

" set the forward slash to be the slash of note.  Backslashes suck
set shellslash

" Make command line two lines high
set ch=2

" set visual bell -- i hate that damned beeping
set vb

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Make sure that unsaved buffers that are to be put in the background are
" allowed to go in there (ie. the -must save first- error doesn't come up)
set hidden

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions=ces$

" Set the status line the way i like it
" set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%v\ Buf:%n\ [%b][0x%B]

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Don't update the display while executing macros
set lazyredraw

" Don't show the current command in the lower right corner.  In OSX, if this is
" set and lazyredraw is set then it's slow as molasses, so we unset this
set showcmd

" Show the current mode
set showmode

" Hide the mouse pointer while typing
set mousehide

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" set the gui options the way I like
set guioptions=acq

" always show line-numbers
set number

" This is the timeout used while waiting for another key to be pressed - measured in milliseconds.
set timeoutlen=500

" Keep some stuff in the history
set history=1000

set undolevels=1000             " use many muchos levels of undo
" if v:version >= 730
"    set undofile                " keep a persistent backup file
"    set undodir=~/.vim/tmp/undo,~/tmp,~/tmp/undo,/tmp
" endif

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=6

" Allow the cursor to go in to -invalid- places
set virtualedit=all

" Disable encryption (:X)
set key=

" Make the command-line completion better
set wildmenu

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
nmap <silent> <C-N> :silent noh<CR>

syntax on
" Remap j and k to act as expected when used on long, wrapped, lines
nnoremap j gj
nnoremap k gk

" H - in normal mode to go to beginning of line, just like - 0
nnoremap <silent>H 0
" L - in normal mode to go to end of line, just like - $
nnoremap <silent>L $

" Hit Spacebar to escape visual mode   "vnoremap <silent><leader><Space> <ESC>
"
" source matchit plugin: type % to jump from begin - to closing tag
source $VIMRUNTIME/macros/matchit.vim

" ==================================================
" Search
" ==================================================
set hlsearch            " highlight searches
set incsearch           " do incremental searching
set ignorecase          " ignore case when searching
set smartcase           " if searching and search contains upper case, make case sensitive search

" Save on ctrl-s
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

map <leader>dr :e ~/Dropbox/Apps/Plaintext\\ 2<cr>
map <leader>zi :e ~/Sites/playground<cr>
 
set backupdir=~/.vim-backup,.,/tmp
set directory=~/.vim-backup,/tmp

syntax enable

set background=dark
colorscheme base16-atelierdune

