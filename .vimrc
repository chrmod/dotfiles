set nocompatible
filetype off

source $HOME/.config/vim/plugins.vimrc
source $HOME/.config/vim/settings.vimrc
source $HOME/.config/vim/plugins-config.vimrc

" THEME
syntax enable
set t_Co=256
set background=dark
colorscheme gruvbox
" transparancy
hi Normal ctermbg=none

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

" autoreload vimrc after cache
autocmd! BufWritePost .vimrc source %
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" filetypes
autocmd BufNewFile,BufRead Jenkinsfile set syntax=groovy
autocmd BufNewFile,BufRead *.jsm set syntax=javascript

let mapleader=" "

" shortcuts
map <Leader><Space> :noh<CR>
map <Leader><Tab> <C-^>
