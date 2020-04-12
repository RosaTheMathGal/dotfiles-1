" BASIC {{{1
set cursorline
set number
set relativenumber

set expandtab
set shiftwidth=4
set softtabstop=4

" COLORS {{{1
set termguicolors

" MISCELLANEOUS {{{1
filetype plugin indent on
set nojoinspaces
set scrolloff=1
set undofile

" Ignore case in patterns unless there are uppercase letters.
set ignorecase
set smartcase

" More intuitive splits.
set splitbelow
set splitright

" MAPPINGS {{{1

" Clear highlighting.
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Better yanking.
nnoremap <silent> Y y$
