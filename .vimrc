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
    Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
endif

Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'drewtempelmeyer/palenight.vim'
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

" easy js and html editing
let g:user_emmet_leader_key=','

" find files using telescope.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" disables error bells
set noerrorbells

" clipboard to OSx and swp files
set clipboard=unnamed
set noswapfile

" opens below & right
set splitbelow
set splitright

" use of undo file
set undodir=~/.vim/undodir
set undofile

" tabs and indent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set nu
set rnu
set smartindent
set nowrap

" saving keymaps
nmap zz :wa<cr>
nmap zqq :wqa<cr>
nmap xx :q!<cr>

" personal vim theme
set background=dark
colorscheme palenight 
set termguicolors

if (has('nvim'))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

NeoBundleCheck
