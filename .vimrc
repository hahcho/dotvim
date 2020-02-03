set t_Co=16
syntax on
filetype on
filetype indent on
filetype plugin indent on

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
" Mapping for Fugitive
nnoremap <leader>g :Gstatus<CR>
" Mappings for Tern TODO move in a separate file
nnoremap <leader>d :TernDef<CR>
nnoremap <leader>r :TernRename<CR>
" Search with Ag the word under the cursor
nnoremap <leader>a yiw:Ag <C-r>0<CR>

" Automatic removal of all trailing whitespaces when file is saved
autocmd FileType c,cpp,python,ruby autocmd BufWritePre <buffer> :%s/\s\+$//e 

" Remove Ex mode
map Q <nop>

map <Up> <nop>
map <Down> <nop>
map <Left> <nop>
map <Right> <nop>

imap <Up> <nop>
imap <Down> <nop>
imap <Left> <nop>
imap <Right> <nop>

map <F10> :e ~/.vimrc<CR>
map <F12> :source ~/.vimrc<CR>

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
highlight notesInProgress cterm=bold ctermbg=4 ctermfg=white
highlight notesTodo       cterm=bold ctermbg=3 ctermfg=white
highlight notesFixMe      cterm=bold ctermbg=1 ctermfg=white
highlight notesXXX        cterm=bold ctermbg=9 ctermfg=white

set wildmenu
set formatoptions+=j " Delete comment character when joining commented lines

set rtp+=/usr/bin/fzf

" a hacky way to transition to FZF from ctrl p
nnoremap <c-p> :Files<CR>
