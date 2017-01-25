set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'sheerun/vim-polyglot'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'terryma/vim-multiple-cursors' " Multi cursors

call vundle#end()            " required
filetype plugin indent on    " required

" THEME
syntax enable
set t_Co=256
set background=dark
colorscheme gruvbox

set autoindent " set auto indent
set clipboard=unnamedplus " use the system clipboard
set cursorline " highlight current line
set expandtab " use spaces, not tab characters
set hlsearch " highlight all search matches
set ignorecase " ignore case in search
set incsearch " show search results as I type
set laststatus=2
set mouse=a " enable mouse support
set nocompatible " don't need to be compatible with old vim
set nofoldenable " disable code folding
set number
set relativenumber
set ruler " show row and column in footer
set scrolloff=2 " minimum lines above/below cursor
set shiftwidth=2
set showmatch " show bracket matches
set smartcase " pay attention to case when caps are used
set ts=2 " set indent to 2 spaces
set ttimeoutlen=100 " decrease timeout for faster insert with 'O'
set vb " enable visual bell (disable audio bell)
set wildmenu " enable bash style tab completion
set wildmode=list:longest,full

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

" hint to keep lines short
if exists('+colorcolumn')
  set colorcolumn=80
endif

" autoreload vimrc after cache
autocmd! bufwritepost .vimrc source %
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" gitgutter realtime
let g:gitgutter_realtime = 750
let g:gitgutter_eager = 750

" ctrlp
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

""
"" Backup and swap files
""
set backupdir=/tmp// " where to put backup files.
set undodir=/tmp//
set directory=/tmp// " where to put swap files.

let mapleader=" "

" shortcuts
map <Leader><Space> :noh<CR>
map <Leader><Tab> <C-^>

autocmd BufNewFile,BufRead *.jsm set syntax=javascript

" Jenkinsfile support
au BufReadPost Jenkinsfile set syntax=groovy
