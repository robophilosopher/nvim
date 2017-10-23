set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc

" set default charset
set encoding=utf-8
set termencoding=utf-8

" disable .swap files
set noswapfile

" autoreload files
set autoread

" indentation
set autoindent
set copyindent
set ts=2                " number of spaces in a tab
set sw=2                " number of spaces for indent
set et                  " expand tabs into spaces

" highlight settings
set nohlsearch
set incsearch
set ignorecase

set background = "dark"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:t_Co=256
colorscheme inkpot

" making clipboard systemwide
set clipboard=unnamed
set sessionoptions=buffers

" prevent vim from adding an empty line at the end of every file
set noeol
set binary

" load key bindings
source ~/.config/nvim/bindings.vim

" deoplete
autocmd VimEnter * :UpdateRemotePlugin
let g:deoplete#enable_at_startup = 1

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_wq=0
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_quiet_messages = { "level": "warnings" }
