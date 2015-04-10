"""""""""""""""""""""""""
" Vundle Initialization
"""""""""""""""""""""""""" 
" {{{
set nocompatible " Disable attempts to make vim backwards compatible with vi.
filetype off " Disable temporarily for Vundle.
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the list of plugins.

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

" The Gundo plugin.
Plugin 'sjl/gundo.vim.git'

" The Silver Searcher.
Plugin 'rking/ag.vim'

" Fuzzy file name searching.
Plugin 'ctrlp.vim'

" Airline
Plugin 'bling/vim-airline'

" Syntastic
Plugin 'Syntastic'

" Vim-Scala
Plugin 'derekwyatt/vim-scala'

" Fugitive
Plugin 'fugitive.vim'

" Linediff
Plugin 'linediff.vim'

" Vim2Hs
Plugin 'dag/vim2hs'
" Now we can turn our filetype functionality back on
filetype plugin indent on
" }}}
"""""""""""""""""""""""""
" General
""""""""""""""""""""""""""
" {{{
syntax enable " Enable syntax processing.
syntax on " Enable syntax display.
set noswapfile
" }}}
""""""""""""""""""""""""""
" Leader
""""""""""""""""""""""""""
" {{{
let mapleader="," " Leader is comma.
" }}}
""""""""""""""""""""""""""
" Spaces and Tabs
""""""""""""""""""""""""""
" {{{
set tabstop=4 " The number of spaces that <Tab> represents visually.
set softtabstop=4 " The number of spaces <Tab> when editing.
set expandtab " Whether to expand a <Tab> into spaces while editing.
" }}}
""""""""""""""""""""""""""
" Files
""""""""""""""""""""""""""
"{{{
nnoremap <leader>s :w<CR>
"}}}
""""""""""""""""""""""""""
" UI
""""""""""""""""""""""""""
" {{{
set number " Show line numbers.
set showcmd " Show the last executed command in bottom right.
" set cursorline "Highlight current line.
set wildmenu " Turn on menu for autocompletion.
set lazyredraw " Redraw screen only when needed.
set showmatch " Show matching parentheses.
" }}}
""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""
" {{{
set incsearch " Search as characters are entered.
set hlsearch " Highlight matches.
" Turn off search highlight after a previous match.
nnoremap <leader><space> :noh<CR> 
" }}}
""""""""""""""""""""""""""
" Folding
""""""""""""""""""""""""""
" {{{
set foldenable " Enable folding.
set foldlevelstart=10 " Open up to 10-deep folds by default.
set foldnestmax=10 " 10 nested fold max.
" space open/closes folds
" nnoremap <space> za
set modelines=1 " This tells vim that it should look for just one 'modeline' set command.
" }}}
""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""
" {{{
" Move vertically by visual line in vim.
nnoremap j gj
nnoremap k gk

" Bind B to ^.
nnoremap B ^
" Highlight last inserted text
nnoremap gV `[v`]

" jk is escape.
inoremap jk <esc>
" }}}
"""""""""""""""""""""""""
" Gundo
"""""""""""""""""""""""""
" {{{
" Toggle gundo.
nnoremap <leader>u :GundoToggle<CR>
" }}}
"""""""""""""""""""""""""
" NerdTree
"""""""""""""""""""""""""
" {{{
nnoremap <leader>w :NERDTree<CR>
" }}}
"""""""""""""""""""""""""
" Ag
"""""""""""""""""""""""""
" {{{
nnoremap <leader>a :Ag
" }}}
"""""""""""""""""""""""""
" CtrlP
"""""""""""""""""""""""""
" {{{
" Order matching files from top to bottom.
let g:ctrlp_match_window = 'bottom,order:ttb'
" Always open files in new buffers.
let g:ctrlp_switch_buffer = 0
" Lets CtrlP view the vim current directory change.
let g:ctrlp_working_path_mode = 0
" Use external command ag to find files.
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" }}}
"""""""""""""""""""""""""
" Syntastic
"""""""""""""""""""""""""
" {{{
nnoremap <leader>c :SyntasticCheck<CR>:Errors<CR>
let g:syntastic_scala_checkers = ['scalac', 'scalastyle', 'fsc']
let g:syntastic_debug = 3
nnoremap en :lnext<CR>
nnoremap eN :lprevious<CR>
nnoremap ec :lclose<CR>
" }}}
"""""""""""""""""""""""""
" Airline
"""""""""""""""""""""""""
"{{{
set laststatus=2 
set encoding=utf-8 " The encoding of the vim-specific characters.
set t_Co=256 " Number of colors.
" Enable vim-airline
let g:airline#extensions#tabline#enabled=1
" Enable powerline fonts and symbols in airline.
let g:airline_powerline_fonts=1
let g:airline_theme='kalisi'
"}}}
"""""""""""""""""""""""""
" Splits
"""""""""""""""""""""""""
"{{{
" Map the <C-w>(dir) -> <C-dir> for navigating windows.
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h
"}}}
"""""""""""""""""""""""""
" Modelines
"""""""""""""""""""""""""
" Tells Vim to set the foldmethod to be marker and the fold level to be zero.
" MUST BE LAST!
" vim:foldmethod=marker:foldlevel=0
