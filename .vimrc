set nocompatible
filetype off

source $HOME/.config/vim/plugins.vimrc
source $HOME/.config/vim/settings.vimrc

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

let mapleader=" "

" shortcuts
map <Leader><Space> :noh<CR>
map <Leader><Tab> <C-^>

autocmd BufNewFile,BufRead *.jsm set syntax=javascript

" Jenkinsfile support
au BufReadPost Jenkinsfile set syntax=groovy
