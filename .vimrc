" Proper python indenting
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set clipboard=unnamed

set columns=180
set guioptions=aAce "hide toolbar
set guifont=Monaco:h12
" The opposite is 'set wrapscan' while searching for strings....
set nowrapscan

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Command-T configuration
let g:CommandTMaxHeight=20

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" The opposite is set noignorecase
set ignorecase
set ruler
" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript
" I like highlighting strings inside C comments
let c_comment_strings=1
" Switch on syntax highlighting.
:syntax on 
" Switch on search pattern highlighting.
set hlsearch
" Hide the mouse pointer while typing
set mousehide

nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

:filetype plugin indent on
:filetype on
:filetype plugin on 

" Move selection up/down (add =gv to reindent after move)
:vmap <D-S-Up> :m-2<CR>gv
:vmap <D-S-Down> :m'>+<CR>gv

" Use modeline overrides
set modeline
set modelines=10
" Show (partial) command in the status line
set showcmd
" Default color scheme
color desert

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

