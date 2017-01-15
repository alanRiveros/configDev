set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"added NerdTree
Plugin 'scrooloose/nerdtree'
"added Tabs Support on all Tabs
Bundle 'jistr/vim-nerdtree-tabs'
"added pretty bars
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"autocmd vimenter * NERDTree

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ 12
let g:airline_powerline_fonts = 1
"show status bar
set laststatus=2
let g:airline_left_sep = "\uE0C4"
let g:airline_right_sep= "\uE0C5"
let g:airline_left_alt_sep = "\uE0D4"
let g:airline_right_alt_sep = "\uE0CA"
let g:airline#extensions#tabline#enabled = 1
