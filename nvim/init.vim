" PLUGINS {{{1
function! PackInit() abort
  packadd minpac
  
  call minpac#init()
  call minpac#add('k-takata/minpac', { 'type': 'opt' })

  call minpac#add('romainl/Apprentice')
  call minpac#add('justinmk/vim-dirvish')
endfunction

command! PackClean call PackInit() | call minpac#clean()
command! PackUpdate call PackInit() | call minpac#update()

" BASIC {{{1
set cursorline
set number
set relativenumber

set expandtab
set shiftwidth=4
set softtabstop=4

" COLORS {{{1
set termguicolors
colorscheme apprentice

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

" Disable netrw.
let g:loaded_netrwPlugin = 1

" MAPPINGS {{{1

" Clear highlighting.
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Better yanking.
nnoremap <silent> Y y$

" AUTOCOMMANDS {{{1
augroup IndentTwoSpaces
  autocmd!
  autocmd FileType css,html,javascript,lua,ruby,vim,yaml setlocal shiftwidth=2
    \ softtabstop=2
augroup END
