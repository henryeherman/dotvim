call pathogen#helptags()
call pathogen#infect()
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
if has("autocmd")
        filetype plugin indent on
endif

set cindent
set number
set expandtab
retab

command! Status echo "All systems are go!"


let g:SimpylFold_docstring_preview = 1
