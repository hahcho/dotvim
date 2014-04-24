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

"Add unite open search files to behave like Commmnad-T
" call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :<C-u>Unite -start-insert file_rec/async:!<CR>
"Add unite most recently used key-binding
nnoremap <leader>r :<C-u>Unite -start-insert file_mru<CR>
"Add unite file navigation from current directory
nnoremap <leader>f :<C-u>Unite -start-insert file<CR>
"Make Unite file cache bigger for projects with deep hierarchy
let g:unite_source_rec_max_cache_files=10000


"Change rspec command for vim-rspec
let g:rspec_command = "!clear && echo bundle exec rspec {spec} && bundle exec rspec {spec}"
"Add rspec plugin mappings
nnoremap <leader>s :call RunCurrentSpecFile()<CR>
