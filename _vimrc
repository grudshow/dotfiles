set number
syntax on
set expandtab
set tabstop=2
colorscheme gruvbox
set background=dark
let g:mapleader=','

"Mapping to reload config
nmap <leader>so :source $HOME\_vimrc<CR>
map <Leader> <Plug>(easymotion-prefix)
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
  endif
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"colorschemes
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
call plug#end()

