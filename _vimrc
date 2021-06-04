
"Pluggins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"colorschemes
Plug 'morhetz/gruvbox'

Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'

call plug#end()

"System
syntax on
set number
set relativenumber
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab
set autowrite
set clipboard=unnamed
let g:mapleader=','
set cmdheight=1

"colorscheme
colorscheme gruvbox
set background=dark
set t_Co=256


"Support cyrillic 
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan


"Maps
nmap <Leader>so :w <bar> so $MYVIMRC<CR>
nmap <Leader>ev :e $HOME\_vimrc<CR>
map <Leader> <Plug>(easymotion-prefix)
inoremap jj <ESC>

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h12:cANSI
    set guioptions-=m "menu bar
    set guioptions-=T "toolbar
    set guioptions-=r "scrollbar
    set encoding=utf-8
    set termencoding=utf-8
    set fileencoding=utf-8
  endif
endif

