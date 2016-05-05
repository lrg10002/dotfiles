" Layne Gustafson's .vimrc
" --[ Cooler Than Your Grandma's (TM) ]--

" General Settings {{{
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

" }}}

" Plugin Setup {{{
let g:go_fmt_command = "goimports"
let g:go_fmt_experimental = 1

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
Plugin 'cespare/vim-toml'
Plugin 'idanarye/vim-dutyl'
Plugin 'rdnetto/YCM-Generator'
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

let g:dutyl_stdImportPaths=['/usr/include/dmd/druntime', '/usr/include/dmd/phobos']
call dutyl#register#tool('dcd-client','/home/layne/bin/dcd-client')
call dutyl#register#tool('dcd-server','/home/layne/bin/dcd-server')
autocmd VimEnter * DUDCDstartServer
" }}}

" Key Mappings {{{
noremap ] ;
noremap [ ,

" Set <Leader> to ,
let mapleader = ','

map ; :!

nmap d<Space> "_dd

nmap <Space>w :w<CR>
nmap <Space>q :wq<CR>
nmap <Space>xq :q!<CR>

nmap <Space>t :NERDTreeToggle<CR>

nmap <C-b> :TagbarToggle<CR>
nmap <Space>b :WinGo __Tagbar__<CR>

nmap <Space>sh :sp<Space>
nmap <Space>sv :vsp<Space>
nmap <Space>Sh <C-w>s
nmap <Space>Sv <C-w>v
nmap <Space>st <C-w>T
nmap <Space>nt :tabn<Space>

nmap <Space>oh <C-w>s:NERDTreeToggle<CR>
nmap <Space>ov <C-w>v:NERDTreeToggle<CR>

nmap <Space>h :noh<CR>

map <Space>r :redraw!<CR>

map <Space>c <Leader>c<Space>

map <Space>p "+p

nmap <Space>dr :!dmd -run %<CR>

nmap <Space>k O<Esc>
nmap <Space>j o<Esc>

au FileType go nmap <Space>gd <Plug>(go-doc-browser)
au FileType go nmap <Space>gi :GoImport<Space>

" For sanity
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-left> <C-w><
nmap <C-right> <C-w>>

inoremap <C-@> <Esc>
inoremap <C-Space> <Esc>

vnoremap <C-@> <Esc>
vnoremap <C-Space> <Esc>

map <C-Down> <C-e>
map <C-Up> <C-y>

" Mappings for auto-inserts
inoremap {<CR> {<CR>}<Esc>ko
"}}}

" Misc {{{
set rnu
set nu

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_auto_type_info = 1

autocmd ColorScheme * hi Search cterm=NONE ctermfg=grey ctermbg=blue

function! s:win_by_bufname(bufname)
    let bufmap = map(range(1, winnr('$')), '[bufname(winbufnr(v:val)), v:val]')
    let thewindow = filter(bufmap, 'v:val[0] =~ a:bufname')[0][1]
    execute thewindow 'wincmd w'
endfunction
command! -nargs=* WinGo call s:win_by_bufname(<q-args>)
"}}}
