set nu
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'ionide/Ionide-vim', {'do': 'make fsautocomplete',}
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete-lsp.vim'          " Autocomplete settings
Plug 'prabirshrestha/asyncomplete.vim'              " Autocomplete
Plug 'prabirshrestha/vim-lsp'                       " LSP Client
Plug 'scrooloose/nerdtree'                          " Tree explorer
Plug 'sheerun/vim-polyglot'                         " Language pack

call plug#end()

set expandtab                  " Replace tabs with spaces
set ignorecase                 " Ignore cases for search regexs
set list                       " Display tabs ans trailing spaces
set listchars=tab:>\ ,trail:\. " Set characters for 'list'
set noswapfile                 " Disable swap
set incsearch                  " Use incremental search
set nowritebackup              " Disable backup
set nrformats+=alpha,octal     " Enable <c-a> and <c-x> for alphabet and octal
set number                     " Display line numbers
set relativenumber             " Relatively display line numbers
set shiftwidth=0               " Use the same width with 'tabstop'
set showmatch                  " Highlight matching parentheses
set smartcase                  " Override 'ignorecase' with any uppercases
set tabstop=2                  " Set the width of a tab to 2 spaces
set updatetime=100             " Set updatetime to 100ms for coc.nvim
runtime! includes/*.vim        " Source all scripts in 'includes' directory
