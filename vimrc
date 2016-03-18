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

set hlsearch

noremap ] ;
noremap [ ,

" Set <Leader> to ,
let mapleader = ','

nmap <Space> <Leader>

let g:go_fmt_command = "gofmt"

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'jstemmer/gotags'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()

" Hide the autocompletion scratch/preview window.
set completeopt-=preview

filetype plugin indent on

syntax on

set background=dark
colorscheme solarized


set foldmethod=marker

set laststatus=2
let g:airline_powerline_fonts = 1
set t_Co=256

map ; :

nmap d<Space> "_dd

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

nmap <Leader>h :noh<CR>

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

inoremap <C-@> <Esc>
inoremap <C-Space> <Esc>

map <C-Down> <C-e>
map <C-Up> <C-y>

" Mappings for auto-inserts
inoremap {<CR> {<CR>}<Esc>ko

autocmd ColorScheme * hi Search cterm=NONE ctermfg=grey ctermbg=blue
