set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'sniphpets/sniphpets'
Plugin 'sniphpets/sniphpets-common'
Plugin 'sniphpets/sniphpets-phpunit'
Plugin 'sniphpets/sniphpets-symfony'
Plugin 'sniphpets/sniphpets-doctrine'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
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
let g:syntastic_php_phpmd_post_args='cleancode,codesize,controversial,design,naming,unusedcode'
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"Esquema de colores
syntax enable
colorscheme darcula

"Indent configuration
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=darkgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=black
let g:indent_guides_enable_on_vim_startup = 1

"ultisnip configuration
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

 " If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"


"Keymaps
"
"conserva la ultima seleccion al indentar
vnoremap < <gv
vnoremap > >gv
noremap <C-S-Right> :vertical resize +5<CR>
noremap <C-S-Left> :vertical resize -5<CR>
noremap <C-S-Up> :resize +5<CR>
noremap <C-S-Down> :resize -5<CR>
xnoremap <A-S-Up> :m-2<CR>gv=gv
xnoremap <A-S-Down> :m'>+<CR>gv=gv

