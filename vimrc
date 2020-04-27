" [ slipsnip's .vimrc ]
" colorscheme base16-eighties
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set nu
set smarttab
set expandtab
set mouse=a
set hidden
set updatetime=300
set path+=**
set wildmenu
filetype plugin on

let mapleader=" "

nnoremap <leader>so :source $HOME/.vimrc<cr>
nnoremap <silent><leader>tr :set rnu!<cr>
nnoremap <silent><leader>tn :set number!<cr>
nnoremap <space> <nop>
nnoremap <leader>l :lnext<cr>
nnoremap <leader>p :lprevious<cr>
nnoremap <leader>r :lrewind<cr>
map <A-]> :vsp<cr>:exec("tag ".expand("<cword>"))<cr>
nnoremap ,html :-1read ~/.vim/skel/skeleton.html<cr>5jwcit

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:tmux_navigator_save_on_switch = 1

let g:colorizer_x11_names = 1
" let g:colorizer_hex_pattern = ['rgb:', '\%(\x\{2}\/\?\)\{3}', '\>']
