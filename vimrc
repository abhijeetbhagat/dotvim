set nocp
execute pathogen#infect()
syntax on
filetype plugin indent on

set hlsearch
set number
set autochdir
colorscheme koehler

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"if has('gui_running')
"   set guifont=Monaco:h8
"end

if has("win32")
    set guifont=Consolas:h11
end

set foldmethod=syntax
set foldlevelstart=1

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML
