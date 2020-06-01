" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/plugged')

Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'haya14busa/incsearch.vim'
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

set nu
set showcmd
set wildmenu
set history=1000
set encoding=utf-8
set scrolloff=5
set noshowmode
set timeoutlen=1000 ttimeoutlen=0
set laststatus=2

syntax enable
colorscheme gruvbox

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

nnoremap <leader><leader> :GFiles<CR>
nnoremap <leader>fi	  :Files<CR>
nnoremap <leader>b	  :Buffers<CR>
nnoremap <leader>fl	  :Lines<CR>
nnoremap <leader>m	  :History<CR>	
nnoremap <leader><bar> 	  <C-W>v
nnoremap <leader>-	  <C-W>s
vnoremap <C-y> 		  "+y
vnoremap <C-p>		  "+p
nnoremap <F6>     	  :NERDTreeToggle<CR>
nnoremap <leader><CR>     <C-w>w
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
let $FZF_DEFAULT_COMMAND = 'ag --hidden -g ""'
