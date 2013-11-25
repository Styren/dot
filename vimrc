" don't sacrifice anything for vi compatibility
set nocompatible

" vundle begin
filetype off

" 256 colors
set t_Co=256

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tomtom/tcomment_vim'
Bundle 'ervandew/supertab'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'

filetype plugin indent on

" remove auto-comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" encoding
set encoding=utf-8
set fileencoding=utf-8

syntax on
set number
set ruler
set laststatus=2
set scrolloff=2

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Show invisibles.
set listchars=nbsp:·,tab:▸\ ,trail:·
set list!

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full

" Run default test constant.
let g:RUN_DEFAULT_TEST = 0
" Run current test in focus constant.
let g:RUN_FOCUS_TEST = 1
" Run last runned test constant.
let g:RUN_LAST_TEST = 2

" ctrlp
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_prompt_mappings = {'PrtExit()':['§']}

" closetag
let g:closetag_html_style=1

" map backspace to do nothing
map <bs> :noh<cr>

" map capital u to redo changes
nnoremap U <C-r>

" map capital w to write
command! W w

" new tab alias
cabbrev tnew tabedit

" use comma as <leader> key instead of backslash
let mapleader=","

" map <leader>c to tcomment
map <leader>c :TComment<cr>

" toggle nerdtree
nmap <leader>d :NERDTreeToggle<cr>

" toggle nerdtree with the cursor positioned at the current file
nmap <leader>D :NERDTreeFind<cr>

" Interpret as Ruby
au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Thorfile,config.ru} set ft=ruby

" wrap markdown and latex
au BufRead,BufNewFile {*.md,*.tex,*.txt} setlocal textwidth=80

" Global ignore
set wildignore+=*.o,*.obj,.git,*.rbc,*/doc/*,*/node_modules/*,*/tmp/*,*.*~,*.class

" NERDTree ignore
let NERDTreeIgnore = ['\.o$', '\.class$']

" Non blinking cursor.
set guicursor+=a:blinkon0

" set cursorline!

" Disable netrw history
let g:netrw_dirhistmax = 0
let g:netrw_dirhist_cnt = 0

" directories for swp files
set directory=/tmp
set backupdir=/tmp

" hilight column 80
set colorcolumn=80
hi ColorColumn ctermfg=white ctermbg=white

" white background
hi Normal ctermbg=White guibg=White

" white status bar
hi StatusLineNC guifg=white ctermfg=white guibg=black ctermbg=black gui=NONE

" color scheme
colorscheme desert
