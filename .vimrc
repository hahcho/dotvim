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

" Explicitly map the <Leader> key
let mapleader = '\'

" Automatic removal of all trailing whitespaces when file is saved
autocmd FileType c,cpp,python,ruby autocmd BufWritePre <buffer> :%s/\s\+$//e 

"Add unit open search files to behave like Commmnad-T
nnoremap t :Unite -start-insert file

" Set custom key binding for MiniBufExpl

" Cycle buffer forwards
" noremap <silent><Leader><Tab> :MBEbn<CR>
" Cycle buffer backwards
" noremap <silent><Leader><S-Tab> :MBEbp<CR>
