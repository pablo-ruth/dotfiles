set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' " Plugins manager

Plugin 'davidhalter/jedi-vim' " Autocompletion
Plugin 'tpope/vim-fugitive'   " Git integration
Plugin 'Raimondi/delimitMate' " Auto-closing parantheses, brackets, etc...
Plugin 'vim-scripts/colorizer' " Colorize hew code #FFFF00
Plugin 'godlygeek/tabular'     " Tabuling
Plugin 'chase/vim-ansible-yaml' " Ansible syntaxing

" Themes
Plugin 'gosukiwi/vim-atom-dark' " Atom dark theme
Plugin 'altercation/vim-colors-solarized' " Solarized theme
let g:solarized_termcolors=256

Plugin 'scrooloose/nerdtree'  " File explorer
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

Plugin 'bling/vim-airline' " Powerline
let g:airline_theme="powerlineish"
let g:airline_powerline_fonts = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

Plugin 'scrooloose/syntastic' " Syntax checking
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Plugin 'SirVer/ultisnips' " Snippets engine
Plugin 'honza/vim-snippets' " Snippets
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

call vundle#end()

syntax on
set clipboard=unnamed
filetype plugin indent on    
set encoding=utf-8 "Default encoding
au BufRead,BufNewFile *.md set filetype=markdown
    
set number " Display lines number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
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
set colorcolumn=80 " Highlight 80th column

set t_Co=256
set background=dark
colorscheme solarized

"Jump to the last known cursor position                                         
set viminfo='10,\"100,:20,%,n~/.viminfo    
autocmd BufReadPost *    
            \ if line("'\"") > 1 && line("'\"") <= line("$") |    
            \   exe "normal! g`\"" |    
            \ endif
