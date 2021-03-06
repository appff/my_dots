call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Dependency of fzf.vim
Plug 'junegunn/fzf.vim'                             " Fuzzy finder
Plug 'mattn/vim-lsp-settings'                       " Easy vim-lsp config
Plug 'mhinz/vim-signify'                            " Sign column git diff
Plug 'morhetz/gruvbox'                              " Gruvbox colorscheme
Plug 'prabirshrestha/asyncomplete-lsp.vim'          " Autocomplete settings
Plug 'prabirshrestha/asyncomplete.vim'              " Autocomplete
Plug 'prabirshrestha/vim-lsp'                       " LSP Client
Plug 'scrooloose/nerdtree'                          " Tree explorer
Plug 'sheerun/vim-polyglot'                         " Language pack
Plug 'MattesGroeger/vim-bookmarks'                  " bookmark
Plug 'voldikss/vim-floaterm'                        " Float terminal
"Plug 'puremourning/vimspector'                      " Vimspector
Plug 'eliba2/vim-node-inspect'                      " vim-node-inspect
call plug#end()
"colorscheme gruvbox            " Use gruvbox color scheme
"set colorcolumn=80             " Display a vertical line at 80 columns
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
"set termguicolors              " Enable 8-bit colors
set updatetime=100             " Set updatetime to 100ms for coc.nvim
autocmd BufNewFile,BufRead *.taster set filetype=fsharp
set mouse=a
runtime! includes/*.vim        " Source all scripts in 'includes' directory
