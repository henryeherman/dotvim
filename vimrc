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

colorscheme desert

command! Status echo "All systems are go!"


let g:SimpylFold_docstring_preview = 1

augroup Python
    "See $VIMRUNTIME/ftplugin/python.vim
    au!
    "smart indent really only for C like languages
    "See $VIMRUNTIME/indent/python.vim
    au FileType python set nosmartindent autoindent
    " Allow gf command to open files in $PYTHONPATH
    au FileType python let &path = &path . "," . substitute($PYTHONPATH, ';', ',', 'g')
    if v:version >= 700
        "See $VIMRUNTIME/autoload/pythoncomplete.vim
        "<C-x><C-o> to autocomplete
        au FileType python set omnifunc=pythoncomplete#Complete
        "Don't show docs in preview window
        au FileType python set completeopt-=preview
    endif
augroup END


autocmd BufRead,BufNewFile *.v,*.vh setfiletype verilog
autocmd BufRead,BufNewFile *.v,*.vh set expandtab tabstop=4 softtabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.sv,*.svi set 
