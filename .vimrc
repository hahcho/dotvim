" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf.vim' | Plug '/usr/bin/fzf'
Plug 'jlanzarotta/bufexplorer'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'xolox/vim-notes' | Plug 'xolox/vim-misc'
Plug 'tomtom/tcomment_vim'

call plug#end()

nnoremap <leader>b :BufExplorer<CR>
nnoremap <leader>a yiw:Rg <C-r>0<CR>
nnoremap <leader>f :NERDTreeToggle<CR>
nnoremap <leader>g :Gstatus<CR>
nnoremap <c-p> :Files<CR>

let g:notes_directories = ['~/notes']
" Change notes.vim coloring settings
highlight notesDoneMarker cterm=bold ctermbg=2 ctermfg=white
highlight notesInProgress cterm=bold ctermbg=4 ctermfg=white
highlight notesTodo       cterm=bold ctermbg=3 ctermfg=white
highlight notesFixMe      cterm=bold ctermbg=1 ctermfg=white
highlight notesXXX        cterm=bold ctermbg=9 ctermfg=white


set laststatus=2 " Show airline status all the time
let g:airline_powerline_fonts = 1 " Use powerline fonts

colorscheme solarized
set t_Co=16
syntax on
filetype on
filetype indent on
filetype plugin indent on

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

" Remove Ex mode
map Q <nop>

" Remove arrow keys navigation
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

" When text is wrapped, move up and down by visual lines.
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk

" Make exiting insert mode easier
imap jk <Esc>

set wildmenu
set formatoptions+=j " Delete comment character when joining commented lines
