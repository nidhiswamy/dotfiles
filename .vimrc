set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath+=~/.vim/bundle/neobundle.vim

if !has('nvim')
    set ttymouse=xterm2
endif

call vundle#begin()
call neobundle#begin(expand('~/.vim/bundle/'))
call plug#begin('~/.vim/plugged')

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
endif

Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'fcpg/vim-orbital'
Plugin 'fcpg/vim-orbital'
Plugin 'VundleVim/Vundle.vim'

NeoBundleFetch 'Shougo/neobundle.vim'

call vundle#end()
call neobundle#end()
call plug#end()

" enables syntax highlighting for vim-javascript plug
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" enables code folding for javascript based on syntax file
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

" emmet-vim
let g:user_emmet_leader_key=','

" opens below & right
set splitbelow
set splitright

set undodir=~/.vim/undodir
set undofile

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nu
set rnu
set smartindent
set nowrap

nmap zz :wa<cr>
nmap zqq :wqa<cr>
nmap xx :q!<cr>

set background=dark
colorscheme orbital 

NeoBundleCheck
