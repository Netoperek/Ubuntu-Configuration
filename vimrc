set shiftwidth=2 tabstop=2 softtabstop=2
set smarttab smartindent autoindent expandtab
set number
colorscheme evening
set hlsearch
set nocompatible
set paste
filetype off
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
command VCSAnnotate SBlame

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
Plugin 'Mustache/vim-mustache-handlebars'
Plugin 'kchmck/vim-coffee-script'
Bundle 'derekwyatt/vim-scala'
call vundle#end()
execute pathogen#infect()
syntax on
filetype plugin indent on
