" Layne Gustafson's .vimrc
" --[ Cooler Than Your Grandma's (TM) ]--

set nocompatible
filetype off

set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set list listchars=tab:\·\ ,trail:·

set backspace=2

" Set <Leader> to ,
let mapleader = ','

let g:go_fmt_command = "goimports"

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'myusuf3/numbers.vim'
"Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'jstemmer/gotags'
Plugin 'tpope/vim-surround'
call vundle#end()

" Hide the autocompletion scratch/preview window.
set completeopt-=preview

filetype plugin indent on

syntax on

set foldmethod=marker

map ; :

nmap <Leader>w :w<CR>
nmap <Leader>q :wq<CR>
nmap <Leader>xq :q!<CR>

nmap <Leader>t :NERDTreeToggle<CR>

nmap <Leader>b :TagbarToggle<CR>

nmap <Leader>sh :sp<Space>
nmap <Leader>sv :vsp<Space>
nmap <Leader>Sh <C-w>s
nmap <Leader>Sv <C-w>v
nmap <Leader>st <C-w>T
nmap <Leader>nt :tabn<Space>

au FileType go nmap <Leader>gd <Plug>(go-doc-browser)

set rnu
set nu

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_auto_type_info = 1

" For sanity
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-left> <C-w><
nmap <C-right> <C-w>>

imap <C-Space> <Esc>

map <C-Down> <C-e>
map <C-Up> <C-y>

" Mappings for auto-inserts
inoremap {<CR> {<CR>}<Esc>ko
