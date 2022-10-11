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
set nobackup
set nowritebackup
set noswapfile

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


map <Leader><space> :noh<CR>
inoremap jj <ESC>
nmap <Leader>so :w <bar> so $MYVIMRC<CR>
nmap <Leader>ev :e $MYVIMRC<CR>


if exists('g:vscode')
  call plug#begin('~/AppData/Local/nvim/plugged')
    Plug 'unblevable/quick-scope',
    Plug 'asvetliakov/vim-easymotion', { 'as': 'vsc-easymotion' }
    Plug 'machakann/vim-sandwich'
  call plug#end()

  " Simulate same TAB behavior in VSCode
  nmap <Tab> :Tabnext<CR>
  nmap <S-Tab> :Tabprev<CR>

  function! s:manageEditorSize(...)
      let count = a:1
      let to = a:2
      for i in range(1, count ? count : 1)
          call VSCodeNotify(to ==# 'increase' ? 'workbench.action.increaseViewSize' : 'workbench.action.decreaseViewSize')
      endfor
  endfunction

  " Sample keybindings. Note these override default keybindings mentioned above.
  nnoremap <C-w>> <Cmd>call <SID>manageEditorSize(v:count, 'increase')<CR>
  xnoremap <C-w>> <Cmd>call <SID>manageEditorSize(v:count, 'increase')<CR>
  nnoremap <C-w>+ <Cmd>call <SID>manageEditorSize(v:count, 'increase')<CR>
  xnoremap <C-w>+ <Cmd>call <SID>manageEditorSize(v:count, 'increase')<CR>
  nnoremap <C-w>< <Cmd>call <SID>manageEditorSize(v:count, 'decrease')<CR>
  xnoremap <C-w>< <Cmd>call <SID>manageEditorSize(v:count, 'decrease')<CR>
  nnoremap <C-w>- <Cmd>call <SID>manageEditorSize(v:count, 'decrease')<CR>
  xnoremap <C-w>- <Cmd>call <SID>manageEditorSize(v:count, 'decrease')<CR>

  " Better Navigation / Навигация по сплитам
  nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
  xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
  nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
  xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
  nnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
  xnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
  nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
  xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>

  " WhichKey Show
  nnoremap <silent> <leader> :call VSCodeNotify('whichkey.show')<CR>
  xnoremap <silent> <leader> :call VSCodeNotify('whichkey.show')<CR>


  " Toggle Sidebar
  nnoremap <silent> <leader>t :call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>
  xnoremap <silent> <leader>t :call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>

	"Quick Scope
  let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
	highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
	highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline'

	"Sandwich
	highlight OperatorSandwichBuns guifg='#aa91a0' gui=underline ctermfg=172 cterm=underline
	highlight OperatorSandwichChange guifg='#edc41f' gui=underline ctermfg='yellow' cterm=underline
	highlight OperatorSandwichAdd guibg='#b1fa87' gui=none ctermbg='green' cterm=none
	highlight OperatorSandwichDelete guibg='#cf5963' gui=none ctermbg='red' cterm=none
else

endif


