set nocompatible              " be iMproved, required
set nobackup
set tabstop=4
set expandtab
set number
set autoindent
set smartindent
set smarttab
set cindent shiftwidth=4
set hlsearch
set incsearch
"set foldmethod=syntax
"set foldlevelstart=1
hi Search ctermfg=black
set cursorline
hi cursorLineNr cterm=bold ctermfg=Red gui=bold guifg=Red
hi cursorLine cterm=NONE ctermfg=black ctermbg=254
au InsertEnter * hi Cursor ctermbg=black guibg=black
au InsertLeave * hi Cursor ctermbg=black guibg=black

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "let path = '~/some/path/here'
" "call vundle#rc(path)
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'mozilla/doctorjs'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'

call vundle#end()
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between here and filetype plugin indent on.
" " scripts on GitHub repos
" Plugin 'tpope/vim-fugitive'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'tpope/vim-rails.git'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " scripts from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Plugin 'FuzzyFinder'
" " scripts not on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " ...
"
filetype plugin indent on     " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList          - list configured plugins
" " :PluginInstall(!)    - install (update) plugins
" " :PluginSearch(!) foo - search (or refresh cache first) for foo
" " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Plugin commands are not allowed.
" " Put your stuff after this line
let g:ctrlp_show_hidden=1
let g:airline_theme='solarized'
let g:airline_powerline_fonts=1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_c_checkers=['gcc', 'make']
"let g:syntastic_c_no_include_search=1
"
set laststatus=2
syntax on
" filetype on                  " required

let xml_syntax_folding=1        " XML


" key map
let mapleader=","
map <leader>t :TagbarToggle<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
map <leader>o :copen<CR>
map <leader>c :cclose<CR>

command DiffOrig let g:diffline = line('.') | vert new | set bt=nofile | r # | 0d_ | diffthis | :exe "norm! ".g:diffline."G" | wincmd p | diffthis | wincmd p
nnoremap <Leader>do :DiffOrig<cr>
nnoremap <leader>dc :q<cr>:diffoff<cr>:exe "norm! ".g:diffline."G"<cr>
