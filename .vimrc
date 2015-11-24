" Basic Vim configuration.

set nocompatible                  " Must come first because it changes other options.

call pathogen#infect()            " Using Pathogen for managing bundles

syntax enable                     " Turn on syntax highlighting.
set background=dark               " Dark background
let g:solarized_termtrans = 1     " Fixes transparency issue in iTerm
colorscheme solarized             " Solarized Theme
filetype plugin indent on         " Turn on file type detection.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.

set laststatus=2                  " Show the status line all the time

" Launch NERDTree on open if a file isn't specified.
autocmd vimenter * if !argc() | NERDTree | endif

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
