set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = ','

"############## VIM-PLUG pluggin manager for vim ###############
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

"Navigate and manipulate files in a tree view.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"Dim Paragraph above and below the active paragraph. To Use :LimeLight  To Stop :LimeLight! 
Plug 'junegunn/limelight.vim'

"Distraction free writing by removing UI elements and centering everything.
Plug 'junegunn/goyo.vim'

"A git wrapper
Plug 'tpope/vim-fugitive'

" Zoom in and out of a specific split pane (similar to tmux).
Plug 'dhruvasagar/vim-zoom'

"quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

"Multiple Cursor 
Plug 'terryma/vim-multiple-cursors'

"EMMET is a powerful completion for HTML, CSS, JavaScritp
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf.vim'

"nerdcommentor for multi line comments
Plug 'preservim/nerdcommenter'

"FZF Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Check Syntax in Vim asynchronously and fix files
Plug 'w0rp/ale'

" Initialize plugin system
call plug#end()

set expandtab
set number
set paste
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nocompatible
set autoindent
set noswapfile
set ignorecase
set smartcase
set incsearch
set hlsearch
set laststatus=2

" Enable Folding
set foldmethod=indent
set foldlevel=99

"map sort function to a key
vnoremap <Leader>s	:sort<CR>

"easier moving of code blocks
vnoremap	<	<gv	"	better indentation
vnoremap	>	>gv	"	better indentation

"TO use Spell check with type :set spell then ctrl+p to get list of words
set complete+=kspell	

"Search Down into subfolders
"Provides tab-completion for all file-related tasks. To Use type :find filename 
set path+=**
"Type :find *html+tab to see list of .html in thr current path
set wildmenu
":b let you autocomplete any open buffer 

"SNIPPETS:
" Read an empty HTML template and move cursor to title. To use type ,html in cmd mode
nnoremap <Leader>html	:-1read	$HOME/.vim/.skeleton.html<CR>6jwf>a
nnoremap <Leader>c++	:-1read	$HOME/.vim/.skeleton.cpp<CR>4jwf>a
nnoremap <Leader>c		:-1read	$HOME/.vim/.skeleton.c<CR>3jwf>a

"HTML Key-Mapping
autocmd FileType html nnoremap ;b <b></b><Esc>FbT>i

"Simply Fold
let g:SimpylFold_docstring_preview=1

"NerdTree bind key Leader + n using nerdtree-plug
map <Leader>n :NERDTreeToggle<CR>

" Color name (:help cterm-colors) or ANSI code using limelight-plug
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

