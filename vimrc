" [ slipsnip's .vimrc ]
" lightline colorscheme
" let g:lightline = {
"         \ 'colorscheme': 'base16_eighties',
"         \ }

colorscheme gruvbox

set nocompatible
syntax on
set nu
set smarttab
set expandtab
set autoindent
set backspace=indent,eol,start
set encoding=utf-8
set mouse=a
set hidden
set updatetime=300
set path+=**
set wildmenu
set noshowmode
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

filetype plugin indent on

let mapleader=" "

" vim Plug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'vimwiki/vimwiki'
Plug 'vim-syntastic/syntastic'
Plug 'morhetz/gruvbox'

call plug#end()

nnoremap <leader>so :source $HOME/.vimrc<cr>
nnoremap <silent><leader>tr :set rnu!<cr>
nnoremap <silent><leader>tn :set number!<cr>
nnoremap <space> <nop>
nnoremap <leader>l :lnext<cr>
nnoremap <leader>p :lprevious<cr>
nnoremap <leader>r :lrewind<cr>
map <A-]> :vsp<cr>:exec("tag ".expand("<cword>"))<cr>
nnoremap ,html :-1read ~/.vim/skel/skeleton.html<cr>5jwcit

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:tmux_navigator_save_on_switch = 1

let g:colorizer_x11_names = 1
" let g:colorizer_hex_pattern = ['rgb:', '\%(\x\{2}\/\?\)\{3}', '\>']
