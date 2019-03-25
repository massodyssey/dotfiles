set number " turn line number on
set relativenumber
set tabstop=4
set expandtab
set hlsearch

"change leader to space, default is \
let mapleader=" "

set tags=tags;/

map <leader>w :!chmod +w %<cr>

"tab
map <C-Right> gt
map <C-Left> gT
map <C-t> :tabnew<cr>
map <C-c> :tabclose<cr>

call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree'
    Plug 'tc50cal/vim-terminal'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
    Plug 'junegunn/fzf.vim'
    Plug 'vim-scripts/Conque-Shell'
    Plug 'itchyny/lightline.vim'
    Plug 'itchyny/calendar.vim'
    Plug 'jremmen/vim-ripgrep'
call plug#end()

"disable nerdtree help and make look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"nerdtree toggle
nmap <leader>n :NERDTree<cr>

"fzf
nnoremap <leader>f :FZF<cr>

"let g:lightline = {
"      \ 'colorscheme': 'wombat',
"      \ }
"

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

set laststatus=2

