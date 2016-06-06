" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.
filetype off

set term=xterm-256color

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'easymotion/vim-easymotion'
Plugin 'bling/vim-airline'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/dbext.vim'
Plugin 'exu/pgsql.vim'
Plugin 'jpalardy/vim-slime'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'avakhov/vim-yaml'
Plugin 'alvan/vim-closetag'

call vundle#end()

filetype plugin indent on

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
"runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
" set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set expandtab
set shiftwidth=2
set softtabstop=2
map h <nop>
map j <left>
map k <down>
map l <up>
map m <right>



set omnifunc=syntaxcomplete#Complete

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:AutoPairsFlyMode = 0

let g:airline_powerline_fonts = 1

let mapleader=","

let g:UltiSnipsExpandTrigger="<c-z>"
let g:UltiSnipsJumpForwardTrigger="<c-z>"

"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"let g:ycm_server_python_interpreter = "/usr/bin/python2"

let g:dbext_default_profile_PG = 'type=PGSQL:user=rubypg'
let g:dbext_default_profile = 'PG'
let g:dbext_display_cmd_line = 1

let g:slime_target = "tmux"

colorscheme jellybeans

let g:sql_type_default = 'pgsql'

