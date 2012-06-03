call pathogen#helptags()
call pathogen#infect()
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
filetype plugin on
:set cindent
:set number
:set expandtab
:retab
let g:SimpylFold_docstring_preview = 1
