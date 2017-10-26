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

" hint to keep lines short
if exists('+colorcolumn')
  set colorcolumn=80
endif

"" Backup and swap files
set backupdir=/tmp// " where to put backup files.
set undodir=/tmp//
set directory=/tmp// " where to put swap files.

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

" filetypes
autocmd BufNewFile,BufRead Jenkinsfile set syntax=groovy
autocmd BufNewFile,BufRead *.jsm set syntax=javascript

let mapleader=" "

" shortcuts
map <Leader><Space> :noh<CR>
