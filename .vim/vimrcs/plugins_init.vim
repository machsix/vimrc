call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'chr4/nginx.vim'
Plug 'dense-analysis/ale'
Plug 'dracula/vim'
Plug 'fatih/vim-go'
Plug 'itchyny/lightline.vim'
Plug 'rhysd/vim-clang-format'
Plug 'maximbaz/lightline-ale'
Plug 'ntpeters/vim-better-whitespace'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-markdown'
Plug 'vim-scripts/mayansmoke'
Plug 'vim-scripts/mru.vim'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neco-syntax'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'crusoexia/vim-monokai'
Plug 'liuchengxu/vista.vim'
call plug#end()
