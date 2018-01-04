set nocp
execute pathogen#infect()
syntax on
filetype plugin indent on
set noswapfile    
set incsearch
set hlsearch
set number
set autochdir
colorscheme muon

nnoremap <leader>ev :vsp $VIMRCPATH/vimrc<CR>

nnoremap ; :
nnoremap : ;
inoremap {<CR> {<CR>}<Esc>O

" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

"if has('gui_running')
"   set guifont=Monaco:h8
"end

if has("win32")
    set guifont=Consolas:h9
end

if has("unix")
    set guifont=Ubuntu\ Mono\ 13
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

" Status Line {  
        set laststatus=2                             " always show statusbar  
        set statusline=  
        set statusline+=%-10.3n\                     " buffer number  
        set statusline+=%f\                          " filename   
        set statusline+=%h%m%r%w                     " status flags  
        set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
        set statusline+=%=                           " right align remainder  
        set statusline+=0x%-8B                       " character value  
        set statusline+=%-14(%l,%c%V%)               " line, character  
        set statusline+=%<%P                         " file position  
        set statusline+=%{fugitive#statusline()}
"}  

let g:multi_cursor_quit_key='<C-c>'
nnoremap <C-c> :call multiple_cursors#quit()<CR>


let g:multi_cursor_exit_from_insert_mode=0

"indent selection using > and <
:vnoremap < <gv
:vnoremap > >gv

"clear selections by pressing F3
nnoremap <F3> :noh<CR> 

"setup racer
set hidden
let g:racer_cmd = "/home/abhi/.cargo/bin/racer"
let $RUST_SRC_PATH = "/home/abhi/rust_code/src"

"swap esc and capslock in vim and retain original keys after vim quits
au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
