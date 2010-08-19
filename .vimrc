" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=150		" keep 150 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=v
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

"
" 20100509 - Meine
"

" Keine Treppen bei c&p
set pastetoggle=<F8>

" Tabs auf 4 + softtabs
set tabstop=4
set shiftwidth=4
set expandtab

" Zugehörige Klammern anzeigen
set showmatch

" Kein Gefiepe
set noerrorbells
set visualbell

" Immer HL
syntax enable

" colors
set t_Co=256
colorscheme desert256

" no backups
set nobackup

" no wrap
set nowrap

" nice font
set gfn=ProggyCleanTTSZ:h12:cANSI

"
" Tabs
"

set showtabline=2    " always show tab bar
set tabpagemax=30    " maximum number of tabs to create

" new tab
nnoremap <C-t>     :tabnew<cr>
vnoremap <C-t>     <C-C>:tabnew<cr>
inoremap <C-t>     <C-C>:tabnew<cr>
" tab left
nnoremap <C-h>     :tabprevious<cr>
vnoremap <C-h>     <C-C>:tabprevious<cr>
inoremap <C-h>     <C-O>:tabprevious<cr>

" tab right
nnoremap <C-l>     :tabnext<cr>
vnoremap <C-l>     <C-C>:tabnext<cr>
inoremap <C-l>     <C-O>:tabnext<cr>
