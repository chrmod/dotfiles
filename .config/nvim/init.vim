call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular'
Plug 'rstacruz/vim-closer'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

Plug 'w0rp/ale' " Linter

Plug 'sheerun/vim-polyglot' " Syntax
Plug 'Shougo/deoplete.nvim' " Autocomplete

" typescript
Plug 'mhartington/deoplete-typescript'

" elm
Plug 'pbogut/deoplete-elm'
Plug 'ElmCast/elm-vim'

" Disable deoplete at startup
let g:deoplete#enable_at_startup = 0

call plug#end()

source $HOME/.config/vim/theme.vimrc
source $HOME/.config/vim/settings.vimrc
source $HOME/.config/vim/plugins-config.vimrc
source $HOME/.config/nvim/plugins-config.vimrc


