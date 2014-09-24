" don't sacrifice anything for vi compatibility
set nocompatible

" allow us to change unsaved buffers
set hidden

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
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'Raimondi/delimitMate'
Bundle 'bling/vim-bufferline'
Bundle 'kien/ctrlp.vim'
Bundle 'airblade/vim-gitgutter'

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
set tabstop=4
set shiftwidth=4
set softtabstop=4
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

" closetag
let g:closetag_html_style=1

" map backspace to clear find-colouring etc and not walk backwards
map <bs> :noh<cr>

" map capital u to redo changes
nnoremap U <C-r>

" map capital w to write
command! W w

" new tab alias
cabbrev tnew tabedit

" use comma as <leader> key instead of backslash
let mapleader=","

" ctrlp
nnoremap <leader>f :CtrlP<cr>

" map <leader>c to tcomment
map <leader>c :TComment<cr>

" toggle nerdtree
nmap <leader>d :NERDTreeToggle<cr>

" toggle nerdtree with the cursor positioned at the current file
nmap <leader>D :NERDTreeFind<cr>

" Show buffers
nmap Å :buffers<cr>:buffer<Space>

" Go to last buffer
nnoremap å :b#<cr>

" Move between splits with ^ + standard vim bindings
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-l> <C-W>l

" create horizontal and verical splits
nmap <leader>s :split<cr>
nmap <leader>v :vsplit<cr>

" remove buffer
nmap <leader>r :bdelete<cr>

" x + 'å' jumps to buffer x (except if x is 0, jump to buffer 10)
let c = 1
while c <= 9
  execute "nnoremap " . c . "å :" . c . "b\<cr>"
  let c += 1
endwhile
nnoremap 0å :10b<cr>

" map + to move to end of line
map + $

" map 0 to move to beginning of line (ignore tabs)
map 0 ^

" Interpret as Ruby
au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Thorfile,config.ru} set ft=ruby

" wrap markdown and latex
au BufRead,BufNewFile {*.md,*.tex,*.txt} setlocal textwidth=80

" Global ignore
set wildignore+=*.o,*.obj,.git,*.rbc,*/doc/*,*/node_modules/*,*/tmp/*,*.*~,*.class

" NERDTree ignore
let NERDTreeIgnore = ['\.o$', '\.class$']

" Non blinking cursor
set guicursor+=a:blinkon0

" Syntastic settings
let g:syntastic_c_check_header = 1
let g:syntastic_c_auto_refresh_includes = 1
" let g:syntastic_c_compiler_options = '-std=g99 -pedantic -Wall'

" Disable netrw history
let g:netrw_dirhistmax = 0
let g:netrw_dirhist_cnt = 0

" directories for swp files
set directory=/tmp
set backupdir=/tmp

" hilight column 80
set colorcolumn=80

" color scheme
colorscheme desert

" airline settings
let g:airline_left_sep=" "
let g:airline_right_sep=" "
let g:airline_mode_map = {
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V-LINE',
    \ '^V' : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ '^S' : 'S',
    \ }
let g:airline_section_z = '%l:%c %p%%'

" enable bufferline in airline
let g:airline#extensions#bufferline#enabled = 1
let g:bufferline_echo = 0

" changes colour of matching brackets
highlight MatchParen        cterm=bold ctermbg=white ctermfg=black

" colours signcolumn for gitgutter & syntastic
highlight SignColumn        ctermbg=black

" gitgutter options
let g:gitgutter_map_keys = 0
nmap gk <plug>GitGutterPrevHunk
nmap gj <plug>GitGutterNextHunk
nmap gs <plug>GitGutterStageHunk
nmap gr <plug>GitGutterRevertHunk

" remove default tcomment map
let g:tcommentMaps = 0
