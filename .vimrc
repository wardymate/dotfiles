" General
set nocompatible " use vim settings instead of vi
filetype off
set history=1000
set shell=bash
filetype plugin indent on
set number

" Editing
set autoindent
set expandtab

" Formatting
set shiftwidth=2
set tabstop=2
set softtabstop=2
set numberwidth=5
set encoding=utf-8

" UI
set ruler
set guioptions-=T " remove MacVim GUI
set cursorline
set showtabline=2
set cmdheight=2
set winwidth=80
set laststatus=2

" Easy window splits
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" Command display
set showmode
set showcmd

" Search
set hlsearch
set incsearch

" Colouring and syntax highlighting

syntax enable
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

" Vundle bundles
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle"
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Clojure
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
" Bundle 'tpope/vim-classpath'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-fugitive'

" Markdown
Bundle 'tpope/vim-markdown'

" Utils
Bundle 'tpope/vim-commentary'
Bundle 'vim-scripts/paredit.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'christoomey/vim-tmux-navigator'

" Search and file browsing
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'

" nerdtree config
let NERDTreeShowHidden=1 " display hidden files

" ctrlp setup
let g:ctrlp_working_path_mode = 'ra'