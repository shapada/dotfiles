source $VIMRUNTIME/defaults.vim

set mouse-=a
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set spell	
set visualbell

set hlsearch
set smartcase
set ignorecase
set incsearch
 
set autoindent	
set shiftwidth=4
set smartindent	
set smarttab
set softtabstop=2
 
set ruler
set autochdir	

set undolevels=1000
set nocompatible            

filetype off            
set backspace=indent,eol,start

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'hesselbom/vim-hsftp'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'yggdroot/indentline'
Plugin 'mbbill/undotree'
Plugin 'benmills/vimux'
Plugin 'junegunn/vim-easy-align'
Plugin 'airblade/vim-gitgutter'
Plugin 'morhetz/gruvbox'

call vundle#end()            

filetype plugin indent on    

colorscheme gruvbox
set background=dark
