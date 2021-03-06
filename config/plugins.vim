set nocompatible
filetype off

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
call plug#end()

let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif "automatically closing the scratch window at the top of the vim window on finishing a complete or leaving insert

" *** Airline ***
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1"
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
