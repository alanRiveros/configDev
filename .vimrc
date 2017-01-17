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
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
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
let g:airline_theme='wombat'
highlight LineNr ctermfg=grey ctermbg=black
set number
"set list lcs=tab:\|· 

"Syntastic
let g:syntastic_php_checkers=['php', 'phpmd', 'phpcs']
let g:syntastic_php_phpcs_args='--standard=PSR2 -n --exclude=PEAR.Commenting.FunctionComment'
let g:syntastic_php_phpcs_args='--tab-width=0'

set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

