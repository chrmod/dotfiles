set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" navigation & search
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'

" syntax
Plugin 'darthdeus/vim-emblem'
Plugin 'kchmck/vim-coffee-script'
Plugin 'nono/vim-handlebars'
Plugin 'ngmy/vim-rubocop'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-scripts/groovy.vim'

" git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" JS
Plugin 'Shutnik/jshint2.vim'

" comments
Plugin 'scrooloose/nerdcommenter'

" helpers
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors' " Multi cursors

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
filetype plugin on

" THEME
syntax enable
set t_Co=256
set background=dark
colorscheme gruvbox

set autoindent " set auto indent
set ts=2 " set indent to 2 spaces
set shiftwidth=2
set expandtab " use spaces, not tab characters
set nocompatible " don't need to be compatible with old vim
" set relativenumber " show relative line numbers
set number
set relativenumber
set showmatch " show bracket matches
set ignorecase " ignore case in search
set hlsearch " highlight all search matches
set cursorline " highlight current line
set smartcase " pay attention to case when caps are used
set incsearch " show search results as I type
set mouse=a " enable mouse support
set ttimeoutlen=100 " decrease timeout for faster insert with 'O'
set vb " enable visual bell (disable audio bell)
set ruler " show row and column in footer
set scrolloff=2 " minimum lines above/below cursor
"set list
"set listchars=extends:»,nbsp:_,precedes:«,tab:▸\ ,trail:·
set nofoldenable " disable code folding
set clipboard=unnamedplus " use the system clipboard
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
let g:ctrlp_extensions        = ['tag']
let g:ctrlp_match_window      = 'bottom,order:ttb'
let g:ctrlp_switch_buffer     = 0
let g:ctrlp_use_caching       = 0
let g:ctrlp_user_command      = 'ag %s --files-with-matches --ignore tags --ignore tmp --nocolor -g ""'
let g:ctrlp_working_path_mode = 0

""
"" Backup and swap files
""
set backupdir=/tmp// " where to put backup files.
set undodir=/tmp//
set directory=/tmp// " where to put swap files.

let mapleader=" "

" turn off arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" auto save
autocmd FocusLost * :silent! wall
autocmd FocusLost * call feedkeys("\<C-\>\<C-n>")

" shortcuts
map <Leader><Space> :noh<CR>
map <Leader><Tab> <C-^>

autocmd BufNewFile,BufRead *.jsm set syntax=javascript

" Jenkinsfile support
au BufReadPost Jenkinsfile set syntax=groovy
