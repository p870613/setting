set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
let CLEAR_BG = 1
let g:rustfmt_autosave = 1

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'rust-lang/rust.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'racer-rust/vim-racer'
Plugin 'ayu-theme/ayu-vim'
Plugin 'w0rp/ale'
call vundle#end()

let ayucolor="mirage"
colorscheme ayu


syntax on
filetype indent on 
filetype plugin on

"" dir init
command Init :!git init&&ctags -R

"" Use \t as tab in Makefile
autocmd BufReadPost Makefile,makefile,MakeFile :set expandtab&

"" make up
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap {<CR> {<CR>}<Esc>ko

"" cursor move
imap <C-w> <Esc><Up>a
imap <C-a> <Left>
imap <C-d> <Right>
imap <C-x> <Esc><Down>a

"" ctags
function! UpdateCtags()
    let curdir=getcwd()
    while !filereadable("./tags")
        cd ..
        if getcwd() == "/"
            break
        endif
    endwhile
    if filewritable("./tags")
        !ctags -R --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q
        TlistUpdate
    endif
    execute ":cd " . curdir
endfunction

set tags=./tags,./TAGS,tags;~,TAGS;~
map f <Esc><C-]>
map F <C-t>

autocmd BufWritePost *.c,*.h,*.py,*.cpp call UpdateCtags()

"" taglist
map  <S-l> <Esc>:TlistToggle<Cr>
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
set ut=100

if exists("syntax_on")
  syntax reset
endif

"-----ale setting-------"
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'

" show errors or warnings in my statusline
let g:airline#extensions#ale#enabled = 2

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

"" mapping 
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-J> <Plug>(ale_next_wrap)

"" ycm setting
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_rust_src_path = '~/.vim/rust/src'
