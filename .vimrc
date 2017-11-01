set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' " Plugins manager

Plugin 'tpope/vim-fugitive'   " Git integration
Plugin 'Raimondi/delimitMate' " Auto-closing parantheses, brackets, etc...
Plugin 'godlygeek/tabular'     " Tabuling
Plugin 'pearofducks/ansible-vim' " Ansible syntax
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Valloric/YouCompleteMe'

Plugin 'fatih/vim-go'
let g:go_fmt_command = "goimports"

Plugin 'hashivim/vim-terraform'
let g:terraform_align=1
let g:terraform_fmt_on_save=1

" Themes
Plugin 'chriskempson/base16-vim' " Base16 Theme
let base16colorspace=256

Plugin 'vim-airline/vim-airline' " Powerline
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme="base16"
let g:airline_powerline_fonts = 1

call vundle#end()

syntax on
set clipboard=unnamed
filetype plugin indent on    
set encoding=utf-8 "Default encoding
au BufRead,BufNewFile *.md set filetype=markdown
    
set number " Display lines number
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround

" Scrolling
set scrolloff=5 "Margin in number of lines during vertical scrolling            
set sidescrolloff=5 "Margin during horizontal scrolling                         
set sidescroll=1
    
set backspace=indent,eol,start "Allow backspacing over everything               
    
set laststatus=2    
set showmode "display current mode                                              
set showcmd "display incomplete commands                                        
set showmatch "Highlights [] and ()                                             
set modeline    
set ruler "show the cursor position all the time                                
set title    
set hlsearch "Highlights search results                                         
set incsearch "Search while typing                                              
set ignorecase "Do incremental searching                                        
set smartcase "Don't ignore case if a uppercase is used   

set t_Co=256
set background=dark
colorscheme base16-default-dark

"Jump to the last known cursor position                                         
set viminfo='10,\"100,:20,%,n~/.viminfo    
autocmd BufReadPost *    
            \ if line("'\"") > 1 && line("'\"") <= line("$") |    
            \   exe "normal! g`\"" |    
            \ endif
