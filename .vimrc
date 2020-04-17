if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'jparise/vim-graphql'
Plug 'mhinz/vim-signify'
Plug 'easymotion/vim-easymotion'
Plug 'ahw/vim-pbcopy'
Plug 'scrooloose/nerdcommenter'
" Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() }}

Plug 'tjvr/vim-nearley'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'OmniSharp/omnisharp-vim'

call plug#end()

" optimization: only use git for signify
let g:signify_vcs_list = [ 'git' ]

filetype plugin indent on

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set linebreak

set nocompatible

" Theming
" colorscheme one
let g:airline_theme='one'

" COC config
set hidden
set nobackup
set nowritebackup

set cmdheight=2
set shortmess+=c
set updatetime=200

nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)

nmap <leader>ad :CocList diagnostics <enter>

nmap <leader>rn <Plug>(coc-rename)

nmap <leader>ac <Plug>(coc-codeaction)

inoremap <silent><expr> <c-space> coc#refresh()

syntax on

set cursorline
set colorcolumn=80

set backspace=indent,eol,start

set wildignore+=*/tmp
set wildignore+=*/node_modules
set wildignore+=*/elm-stuff
set wildignore+=*/dist
set wildignore+=*/static
set wildignore+=*.so
set wildignore+=*.sw*
set wildignore+=*.zip

set wildmode=longest,list,full
set wildmenu

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 20
let g:netrw_localrmdir='rm -rf'

set splitbelow
set splitright

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

autocmd BufWritePre * :%s/\s\+$//e

" custom mappings
map , <leader>

map <c-p> :FZF <enter>
map <c-a> :Rg <space>

map <leader>n :NERDTreeToggle<CR>
map <leader>a <Plug>(easymotion-s)
map <leader>s <Plug>(easymotion-s2)


map f <Plug>(easymotion-s2)

" grepper
let g:grepper = {}
let g:grepper.ag = { 'grepperg': 'ag --vimgrep' }

" copy selected text to clipboard
let g:vim_pbcopy_local_cmd = 'pbcopy'

set clipboard=unnamed

" Enable zsh shell
set shell=zsh\ -l

let g:ruby_host_prog="/home/charlie/.rbenv/versions/2.6.0/bin/neovim-ruby-host"
