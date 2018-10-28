call plug#begin('~/.vim/plugged')
" Haxe Plugin
Plug 'jdonaldson/vaxe'

" statusber
Plug 'itchyny/lightline.vim'

"deoplete
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
let g:deoplete#enable_at_startup = 1

call plug#end()

" set autogroup
augroup MyAutoCmd
  autocmd!
augroup END

set autowrite
set updatetime=500

function s:AutoWriteIfPossible()
  if &modified && !&readonly && bufname('%') !=# '' && &buftype ==# '' && expand("%") !=# ''
    write
  endif
endfunction

autocmd CursorHold * call s:AutoWriteIfPossible()
autocmd CursorHoldI * call s:AutoWriteIfPossible() 

" vaxeのautowriteの有効化
"autocmd FileTye haxe setlocal autowrite
"autocmd FileTye hxml setlocal autowrite
"autocmd FileTye nmml.xml setlocal autowrite

"let g:vaxe_lime_terget = "-neko"

set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set number
set cursorline
" set cursorcolumn
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest

nnoremap j gj
nnoremap k gk

set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set shiftwidth=2

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
