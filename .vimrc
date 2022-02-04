source ~/.vimrc.keymap

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP

set laststatus=2
set t_Co=256
set number

set belloff=all                 " Turn off all bells on error
set nocompatible                " Don't maintain compatibility with Vi
set hidden                      " Allow buffer change without saving
set autoread                    " Load file from disk, i.e. for git reset
set lazyredraw                  " Don't update while executing macros
set backspace=indent,eol,start  " Sane backspace behaviour
set history=1000
set scrolloff=4                 " Keep at least 4 lines below cursor
set secure                      " limit what modelines and autocmds can do
set autowrite                   " write when any action is taken
set tabstop=4                   " The width of a TAB is set to 4.
                                " Still it is a \t. It is just that
                                " Vim will interpret it to be having
                                " a width of 4.

set shiftwidth=4                " Indents will have a width of 4.
set softtabstop=4               " Sets the number of columns for a TAB.
set expandtab                   " Expand TABs to spaces.

filetype plugin indent on " Use filetype detection and file-based automatic indenting.

" This auto command will be executed when opening help file
autocmd Filetype help nmap <buffer> q :q<CR>

