" Pathogen connected stuff
runtime bundle/vim-pathogen/autoload/pathogen.vim
filetype off
call pathogen#incubate()
call pathogen#helptags()

syntax on
filetype on
filetype plugin indent on
syntax on

" Some basic setup for all files
set number
set tabstop=8 
set expandtab 
set shiftwidth=4 
set softtabstop=4

" Automatic removal of all trailing whitespaces
autocmd FileType c,cpp,python,ruby autocmd BufWritePre <buffer> :%s/\s\+$//e 
