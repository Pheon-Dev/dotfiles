call plug#begin(expand('~/.vim/plugged'))
" ================= looks and GUI stuff ================== "{{{

Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'gregsexton/MatchTag'
Plug 'Jorengarenar/vim-MvVis'
"}}}

" ================= Functionalities ================= "{{{

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'
" Plug 'honza/vim-snippets'
" Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire'
" Plug 'michaeljsmith/vim-indent-object'
" Plug 'coderifous/textobj-word-column.vim'
Plug 'glts/vim-textobj-comment'
Plug 'psliwka/vim-smoothie'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-eunuch'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'RRethy/vim-hexokinase'
Plug 'wellle/context.vim'
Plug 'jiangmiao/auto-pairs'
" Plug 'cohama/lexima.vim'
Plug 'matze/vim-move'
Plug 'svermeulen/vim-easyclip'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'machakann/vim-sandwich'
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()
