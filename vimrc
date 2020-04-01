" === slipsnip's .vimrc ===
colorscheme base16-eighties
let g:tmux_navigator_save_on_switch = 1

set nu
set smarttab
set expandtab
set mouse=a " For easy pane resize
set hidden
set updatetime=300
filetype plugin on

" keyboard mappings
let mapleader=" "

noremap <silent><leader>r :source $HOME/.vimrc<cr>
nnoremap <silent><leader>tr :set rnu!<cr>
nnoremap <silent><leader>tn :set number!<cr>
nnoremap <space> <nop>
" locations list mappings
nnoremap <leader>l :lnext<cr>
nnoremap <leader>p :lprevious<cr>
nnoremap <leader>r :lrewind<cr>

" ===syntastic===
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
