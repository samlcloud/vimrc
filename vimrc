" ---------------------------------------------
" Samldev vimrc configuration
" ---------------------------------------------

set encoding=utf8


" --------- Plugins ---------

call plug#begin('~/.vim/plugged')

" Help for vim-plug itself (e.g. :help plug-options)
Plug 'junegunn/vim-plug'

" Color scheme
Plug 'morhetz/gruvbox'            
" Plug 'tomasiser/vim-code-dark'    " based on Visual Studio Code

" A tree explore plugin
Plug 'scrooloose/nerdtree'

" Comment stuff out 
Plug 'tpope/vim-commentary'

" All about "surroundings": parenttheses, brackets, quotes. XML tags, and more
Plug 'tpope/vim-surround'

" Finding file search
Plug 'kien/ctrlp.vim'

" Initialize plugins
call plug#end()


" ------ Syntax ------

" enable syntax highlighting
syntax enable


" ------ Display & format ------

" Display line number on the left
set number

" Display status line always
set laststatus=2

" Turn relative line number on, 
" To turn relative line number off :set nornu
" set rnu

set textwidth=80

set wrapmargin=2


" Display the full path of the current file
" set statusline=%<%F\ %h%m%r%-14.(%1,%c%V%)\ %P

" Display the cursor position on the last line of the screen or 
" in the status line of a window
set ruler


"------ Indentation & Tabs ------
" Indentation settings for using hard tabs for indent, add display
" tabs as four characters wide

" Number of visual spaces per TAB
set tabstop=4
        
" Number of spaces in tab when editing
set softtabstop=4

" Automatically align the indentation of a line in a file
set autoindent

set smartindent

set expandtab

set smarttab


" ------ Searching ------

" Search highlights
set hlsearch

" Search as characters are entered
set incsearch 

set ignorecase

set smartcase

" Make backspace behave in a sane manner
" set backspace=indent,eol,start

" Enable file type detection and do language-dependent indenting
" filetype plugin indent on

" Use visual bell instead of beeping when doing something wrong
" set visualbell

" Command-line autocompletion
" set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight current line
set cursorline

"Highlight matching [{()}]
set showmatch


" ------ Browse & Scroll

" Enable use of the mouse for all modes
set mouse=a


" ------ Color Scheme ------

augroup my_colours
        autocmd!
        autocmd ColorScheme gruvbox hi SpellBad cterm=reverse
augroup END

" Set colorscheme
  colorscheme gruvbox
  set background=dark     " Setting dark mode of gruvbox
" colorscheme codedark


" ------ Spell ------

" Toggle spellcheck with function key <F5>
" set spell spelllang=en_us
map <F5> :setlocal spell! spelllang=en_us<CR>



"------ Finding Files ------
" Search donw into subfilders
" provides tab-completion for all file-related tasks
set path+=**



" ------ NERDTree configuration ------
" Open NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree

" Change MERDTree default arrows
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

                


" Close vim if the only window left open is a NERDTree
" TBD


"------ Mappings configuration ------

" For ESC key
inoremap jj <ESC>

" move to beginning/end of line
nnoremap B ^
nnoremap E $


" key mapping for splits
" TBD

" Key mapping for working with tabs
nnoremap <C-Left> 	:tabr<cr>


" Map <C-R> (ever used <C_L>) also to turn off search highlighting
" (redraw screen) until the next search
nnoremap <C-R> 		:nohl<CR><C-L>

" key mapping for NERDTree
nnoremap <F3>		:NERDTreeToggle<CR>

"Reload vimrc file
map <leader>rr	:so ~/.vim/vimrc 
