" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.
set nocompatible
filetype off

set term=screen-256color
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'nanotech/jellybeans.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'lervag/vimtex'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'ervandew/supertab'
Plugin 'KeitaNakamura/tex-conceal.vim'

call vundle#end()

filetype plugin indent on

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
" set background=dark

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set nojoinspaces        " Disable double space after . ? and ! when joining lines
set expandtab
set shiftwidth=2
set softtabstop=2
set viewoptions-=options
set foldmethod=indent
set foldlevel=20
set omnifunc=syntaxcomplete#Complete
map h <nop>
map j <left>
map k <down>
map l <up>
map m <right>
imap kk <Esc>:up<CR>

let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

let mapleader=","

set spelllang=en_us
set spellsuggest=5
autocmd FileType tex set spell


set textwidth=100

colorscheme jellybeans

match Error /\%101v.\+/
2match Error /\s\+$/

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UtliSnipsEditSplit="vertical"
nnoremap <esc>^[ <esc>^[

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": [],
    \ "passive_filetypes": [] }

let g:tex_flavor = 'latex'
set conceallevel=1
let g:tex_conceal='abdmgs'
