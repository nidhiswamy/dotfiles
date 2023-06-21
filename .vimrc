call plug#begin('~/.vim/plugged')

if !has('nvim')
    set ttymouse=xterm2
endif

if has('nvim')
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
Plug 'fcpg/vim-orbital'
Plug 'christoomey/vim-tmux-navigator'
Plug 'voldikss/vim-floaterm'
Plug 'EdenEast/nightfox.nvim'

call plug#end()

" enables syntax highlighting for vim-javascript plug
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:mapleader = " "

" enables code folding for javascript based on syntax file
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

" easy js and html editing
let g:user_emmet_leader_key=','

" christoomey/vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1
noremap <silent> <c-h> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <c-j> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <c-k> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <c-l> :<C-U>TmuxNavigateRight<cr>

" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2

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

" floaterm functions
nnoremap <leader>n <cmd>FloatermNew --autoclose=0 --wintype=float --height=0.8 --width=0.9 make<cr>
nnoremap <leader>m <cmd>FloatermNew --autoclose=0 --wintype=float --height=0.8 --width=0.9 ./out<cr>

" lazygit
nnoremap <leader>g <cmd>FloatermNew --title=[\\ lazygit\\ ] --autoclose=2 --wintype=float --height=0.95 --width=0.95 lazygit<cr>

" Finding
set smartcase
set ignorecase
set hlsearch
set incsearch

" disables error bells
set noerrorbells

" clipboard to OSx and swp files
set clipboard=unnamed
set noswapfile
set backspace=indent,eol,start
" opens below & right
set splitbelow
set splitright

" use of undo file
set undodir=~/.vim/undodir
set undofile

" folding manually
set foldmethod=manual
set nofoldenable

" User Interface
syntax on
set cursorline
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set backspace=eol,start,indent
set nu
set rnu

" saving keymaps
nmap zz :wa<cr>
nmap zqq :wqa<cr>

" personal vim theme
set background=dark
colorscheme nightfox 
set termguicolors

if (has('nvim'))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
