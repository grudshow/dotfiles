"Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'

call plug#end()

syntax on
set number
set relativenumber
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab
set autowrite
set clipboard=unnamed
set cmdheight=1

let g:mapleader=','

set background=dark
set t_Co=256

"Support cyrillic 
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

"Mute sound
set vb t_vb=

"BackSpace work
set backspace=indent,eol,start

"Maps
inoremap jj <ESC>
nmap <Leader>so :w <bar> so $MYVIMRC<CR>
nmap <Leader>ev :e $MYVIMRC<CR>
map <Leader><Leader> <Plug>(easymotion-prefix)
