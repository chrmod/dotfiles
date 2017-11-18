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

Plug 'mhartington/deoplete-typescript' " typescript

" elm
Plug 'pbogut/deoplete-elm'
Plug 'ElmCast/elm-vim'

call plug#end()
