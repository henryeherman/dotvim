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

let ropevim_extended_complete=1

let g:ropevim_autoimport_modules = ["os", "shutil"]

let g:SimpylFold_docstring_preview = 1
