" Pathogen connected stuff
runtime bundle/vim-pathogen/autoload/pathogen.vim
filetype off
call pathogen#incubate()
call pathogen#helptags()

syntax on
filetype on
filetype indent on
filetype plugin indent on
syntax on

colorscheme solarized

" Some basic setup for all files
set number
set tabstop=8 
set expandtab 
set shiftwidth=4 
set softtabstop=4

" Explicitly map the <Leader> key
let mapleader = '\'

" Mapping for BufExplorer
nnoremap <leader>b :BufExplorer<CR>
" Mapping for NERDTree
nnoremap <leader>f :NERDTreeToggle<CR>

" Automatic removal of all trailing whitespaces when file is saved
autocmd FileType c,cpp,python,ruby autocmd BufWritePre <buffer> :%s/\s\+$//e 


"Change rspec command for vim-rspec
let g:rspec_command = "!clear && echo bundle exec rspec {spec} && bundle exec rspec {spec}"
"Add rspec plugin mappings
nmap <silent> <leader>s :TestFile<CR>
nmap <silent> <leader>n :TestNearest<CR>

map <Up> <nop>
map <Down> <nop>
map <Left> <nop>
map <Right> <nop>

imap <Up> <nop>
imap <Down> <nop>
imap <Left> <nop>
imap <Right> <nop>

map <F10> :e ~/.vimrc<CR>

" Set up syntastic checkers
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_python_checkers = ['pep8']

" Set up vim-notes
:let g:notes_directories = ['~/notes']

" Show airline status all the time
set laststatus=2
" Use powerline fonts
let g:airline_powerline_fonts = 1

" When text is wrapped, move up and down by visual lines.
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk

" Make exiting insert mode easier
imap jk <Esc>

" Change notes.vim coloring settings
highlight notesDoneMarker cterm=bold ctermbg=2 ctermfg=white
