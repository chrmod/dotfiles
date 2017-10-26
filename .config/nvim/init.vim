call plug#begin('~/.vim/plugged')

Plug 'ElmCast/elm-vim'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular'
Plug 'rstacruz/vim-closer'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

call plug#end()

source $HOME/.config/vim/theme.vimrc
source $HOME/.config/vim/settings.vimrc
source $HOME/.config/vim/plugins-config.vimrc
