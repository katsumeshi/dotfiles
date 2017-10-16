" genral settings -------------------------------------
  let mapleader = "\<space>"
  set number

  set encoding=utf-8
  scriptencoding utf-8

  set expandtab 
  set tabstop=4
  set softtabstop=4 
  set autoindent 
  set smartindent 
  set shiftwidth=4 

  set incsearch 
  set ignorecase 
  set smartcase 
  set hlsearch 

  nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

  set whichwrap=b,s,h,l,<,>,[,],~ 
  set number 
  set cursorline 

  nnoremap j gj
  nnoremap k gk
  nnoremap <down> gj
  nnoremap <up> gk

  set backspace=indent,eol,start

  set showmatch 
  source $VIMRUNTIME/macros/matchit.vim 

  " setting hisotry =======================
  set wildmenu
  set history=5000

  " setting mouse ========================
  "if has('mouse')
  "    set mouse=a
  "    if has('mouse_sgr')
  "    set ttymouse=sgr
  "    elseif v:version > 703 || v:version is 703 && has('patch632')
  "    set ttymouse=sgr
  "    else
  "    set ttymouse=xterm2
  "    endif
  "endif

  " setting clip board -------------------
  if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
  endif


  nnoremap s <Nop>
  nnoremap sj <C-w>j
  nnoremap sk <C-w>k
  nnoremap sl <C-w>l
  nnoremap sh <C-w>h
  nnoremap sJ <C-w>J
  nnoremap sK <C-w>K
  nnoremap sL <C-w>L
  nnoremap sH <C-w>H
  nnoremap sn gt
  nnoremap sp gT
  nnoremap sr <C-w>r
  nnoremap s= <C-w>=
  nnoremap sw <C-w>w
  nnoremap so <C-w>_<C-w>|
  nnoremap sO <C-w>=
  nnoremap sN :<C-u>bn<CR>
  nnoremap sP :<C-u>bp<CR>
  nnoremap st :<C-u>tabnew<CR>
  nnoremap ss :<C-u>sp<CR>
  nnoremap sv :<C-u>vs<CR>
  nnoremap sq :<C-u>q<CR>
  nnoremap sQ :<C-u>bd<CR>
  nnoremap <C-q> :q!<CR>
  nnoremap <C-s> :w<CR>
  nnoremap <C-a> :source $MYVIMRC<CR>
