call plug#begin()

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }


Plug 'majutsushi/tagbar'

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree'
Plug 'Shougo/denite.nvim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

call plug#end()


" TagBar
let g:tagbar_width = 30
let g:tagbar_iconchars = ['↠', '↡']

let mapleader=","
nmap <leader>q :NERDTreeToggle<CR>
nmap <leader>w :TagbarToggle<CR>
nmap <leader>p :Prettier<CR>
nmap <leader><Top> <C-w>k
nmap <leader><Bottom> <C-w>j
nmap <leader><Left> <C-w>h
nmap <leader><Right> <C-w>l
nmap <leader>+ <C-w>|
inoremap § <Esc>
cnoremap § <Esc>
nnoremap - <End>
nmap <leader>= <C-w>=
nmap <leader>s :Prettier<CR>:w<CR>
vmap <leader><Up> :'<,'>mo-2<CR>
vmap <leader><Down> :'<,'>mo+1<CR>

map K 10k
map J 10j


syntax enable
colorscheme monokai

set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
if has('mouse')
        set mouse=a
endif