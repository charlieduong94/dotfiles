" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()            " required
filetype plugin indent on    " required

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number

set nocompatible              " be iMproved, required

filetype off                  " required
colo delek
syntax on

let g:ctrlp_working_path_mode='r'
set wildignore+=*/tmp/*,*/node_modules/*,*/dist/*,*/static/*,*.so,*.sw*,*.zip
set wildmode=longest,list,full
set wildmenu

let g:javascript_plugin_jsdoc = 1

autocmd BufWritePre * :%s/\s\+$//e

" custom mappings
map , <leader>

" ctrl p to FZF
map <c-p> :FZF <enter>

map <leader>n :NERDTree <enter>
