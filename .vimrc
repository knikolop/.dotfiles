""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required                       
filetype off                  " required                                    

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/UltiSnips'
Plugin 'honza/vim-snippets'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'altercation/vim-colors-solarized'
call vundle#end()            " required

filetype plugin indent on    " required
filetype plugin on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS' CONFIGURATION, KEY MAPPINGS, ETC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:AutoPairsFlyMode = 1

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 1    
let g:ycm_always_populate_location_list = 1
let g:ycm_open_loclist_on_ycm_diags = 0
let g:ycm_seed_identifiers_with_syntax = 1 

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets='<c-k>'
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.vim/my-snippets/UltiSnips'
let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'my-snippets/UltiSnips']

map <F9> :YcmCompleter FixIt<CR>
map <C-n> :NERDTreeToggle<CR>

syntax enable
if has ('gui_running')
    set background=light
else
    set background=dark
endif
let g:solarized_termcolors=256
colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
set splitbelow
set splitright
set tabstop=4
set shiftwidth=4
set expandtab
set number
set nowrap

nnoremap ; :
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
