execute pathogen#infect()
syntax on
filetype plugin indent on

" Theme
set background=dark
colorscheme solarized
set gfn=Droid\ Sans\ Mono\ 10

" Clipboard - see http://vim.wikia.com/wiki/VimTip984 +
" http://vim.wikia.com/wiki/VimTip21
set clipboard=unnamedplus,unnamed

" Editor
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set history=50                  " keep 50 lines of command line history
set ruler                       " show the cursor position all the time
set pastetoggle=<F8>
set showcmd                     " display incomplete commands
set incsearch                   " incremental search
"set nu                          " line numbers
set expandtab                   " use spaces for tabs
set tabstop=4                   " tab width
set shiftwidth=4                " indent width
set hlsearch
set ic                          " ignore case in search
set autoindent                  " indent new lines
syntax enable                   " syntax hl
set showmatch                   " show matching brackets etc
set nobackup                    " no backup files
"set noswapfile                  " disable swap
set ttimeoutlen=50              " Solves: there is a pause when leaving insert mode
set splitbelow                  " Horizontal splits open below current file
set splitright                  " Vertical splits open to the right of the current file
set wildmode=longest,list       " Pressing <Tab> shows command suggestions similar to pressing <Tab> in bash

" root permission on a file inside VIM
cmap w!! w !sudo tee >/dev/null %

" Airline
set laststatus=2
let airline_theme="jellybeans"

" Tabs
" new tab Ctrl+t
nnoremap <C-t>     :tabnew<cr>
vnoremap <C-t>     <C-C>:tabnew<cr>
inoremap <C-t>     <C-C>:tabnew<cr>
" tab left Ctrl+h
nnoremap <C-h>     :tabprevious<cr>
vnoremap <C-h>     <C-C>:tabprevious<cr>
inoremap <C-h>     <C-O>:tabprevious<cr>
" tab right Ctrl+l
nnoremap <C-l>     :tabnext<cr>
vnoremap <C-l>     <C-C>:tabnext<cr>
inoremap <C-l>     <C-O>:tabnext<cr>
