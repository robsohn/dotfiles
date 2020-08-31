call plug#begin(stdpath('data'))

Plug 'preservim/nerdtree'
Plug 'arcticicestudio/nord-vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary'

call plug#end()

" NerdTree stuff
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set system clipboard
set clipboard+=unnamedplus

" Place new window below for hsplit
set splitbelow

" Place new window right for vsplit
set splitright


" makes Vim show invisible characters with the same characters
set list
set listchars=tab:▸\ ,eol:¬,trail:-

" save on losing focus
au FocusLost * :wa

set encoding=utf-8

syntax on

"Set to auto read when a file is changed from the outside
set autoread
set autowrite

" Mouse mode ALL
set mouse=a

" We dont want no stinking swaps or backups
set nobackup nowb noswapfile

" Allow backspacing over everything
set backspace=indent,eol,start

" Remember up to 100 'colon' commmands and search patterns
set history=100

" Always show status line, even for one window
set laststatus=2

" Show line numbers
set rnu

" Based on http://stevelosh.com/blog/2010/09/coming-home-to-vim Set mapleader to ","
let mapleader = ","

" Hidden buffers - i.e., don't require saving before editing another file.
" Calling quit will prompt you to save unsaved buffers anyways.
set hidden

" Indenting
" replace tab with spaces
set expandtab

" Text width to be 80, and for it to wrap.
set textwidth=120
set linebreak

" Use 4 spaces for <Tab> and :retab
set tabstop=4

" Use 4 spaces for (auto)indent
set shiftwidth=4
set softtabstop=4
set showtabline=1

set smarttab

set fileformat=unix

" Round indent to multiple of 'shiftwidth'.  Applies to > and < commands.
" CTRL-T and CTRL-D in Insert mode always round the indent to a multiple of 'shiftwidth'
set shiftround

" Copy indent from current line when starting a new line
set autoindent

" Do smart autoindenting when starting a new line.  Works for C-like programs,
" but can also be used for other languages.
set smartindent

" make Vim deal with case-sensitive search intelligently
set ignorecase
set smartcase

" Applies substitutions globally on lines. For example,
" instead of :%s/foo/bar/g you just type :%s/foo/bar/
set gdefault

" Enable incremental search
set incsearch

" highlight results of a search
set hlsearch

" When a bracket is inserted, briefly jump to a matching one
set showmatch

" Jump to matching bracket for 2/10th of a second (works with showmatch)
set matchtime=2

" makes Vim show invisible characters with the same characters
set list
set listchars=tab:▸\ ,eol:¬,trail:-

" save on losing focus
au FocusLost * :wa

" save changes
map <leader>s :w<CR>

" Jump between buffers
map <leader>n :bn<cr>
map <leader>p :bp<cr>

map <leader>c :Bclose<cr>

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()

function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete ".l:currentBufNum)
    endif
endfunction

" Scroll when cursor gets within 3 characters of top/bottom edge
set scrolloff=3

" true colours
set background=dark
set t_Co=256

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" Show (partial) commands (or size of selection in Visual mode) in the status line
set showcmd

set noshowmode

set omnifunc=syntaxcomplete#Complete

set pastetoggle=<F2> " enable paste mode

" command-line completion operates in an enhanced mode
set wildmenu
set wildmode=list:longest

"redraws the screne when it needs to
set lazyredraw

" Remove spaces at the end of line
autocmd BufWritePre * :%s/\s\+$//e

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'nord'
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

highlight Comment cterm=italic gui=italic

colorscheme nord
let g:palenight_terminal_italics=1

autocmd FileType php setlocal commentstring=#\ %s

