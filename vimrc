set nocompatible "required
filetype off "required

set rtp+=~/.vim/bundle/Vundle.vim "set run-time path

call vundle#begin() "list plugins here
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'vim-python/python-syntax'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'NLKNguyen/papercolor-theme'
    Plugin 'azabiong/vim-highlighter'
    Plugin 'scrooloose/nerdtree'
    Plugin 'puremourning/vimspector'    
    Plugin 'SirVer/ultisnips'
    Plugin 'davidhalter/jedi-vim'
    Plugin 'ervandew/supertab'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'lervag/vimtex'
    Plugin 'nathanaelkane/vim-indent-guides'
call vundle#end()
filetype plugin indent on

cnoreabbrev sconf source /Users/ayman/.vimrc

" mark in insert mode
inoremap <S-D-left> <esc>vb
inoremap <S-D-right> <esc>ve

imap ;' '<Right><BS>
imap ;" "<Right><BS>
imap ;( (<Right><BS>
imap ;[ [<Right><BS>
imap ;{ {<Right><BS>

inoremap jk <esc>
"inoremap <esc> <nop>

" key mappings
let mapleader = '\'
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput

nmap j gj
nmap k gk
map <leader>n :bn<cr>
map <leader>p :bp<cr>

" leet
" autocmd FileType python map <buffer> <leader>' :w<CR>    <C-W><C-W>clear<CR>python "%"<CR>
nmap <leader>' :wa<CR>:bot terminal python "%"<CR>
"map <leader>t :wa<CR>:bot term ++close<CR>

tnoremap <Esc> <C-W>N

" ignore terminal buffer when cycling though
set termwinsize=5x200

" autocmd TerminalOpen * if bufwinnr('') > 0 | setlocal nobuflisted | endif

nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n" 
nnoremap tt :NERDTreeToggle<CR>

" map <D>W :<C-W><C-W><C-D>

" indent guides config
let g:indent_guides_guide_size = 1

" jedi-vim config
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#environment_path = '/Users/ayman/anaconda3/envs/coshh/bin/python'
let g:jedi#completions_command = "<C-tab>"

" ultisnips config
map <D-E> :UltiSnipsEdit<CR>
let g:UltiSnipsExpandTrigger="<D-r>"
let g:UltiSnipsJumpForwardTrigger="<D-r>"
let g:UltiSnipsJumpBackwardTrigger="<D-R>"
let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsSnippetDirectories=["ultisnips"]
let g:UltiSnipsListSnippets=""

" vimtex config
let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_method = 'latexmk'
let g:tex_flavor = 'latex'

" nerdtree config
let g:NERDTreeWinSize=20 "default size

" python-syntax config
let g:python_highlight_all = 1
let g:python_highlight_builtins = 1
let g:python_highlight_space_errors = 0

" airline config
let g:airline_theme='wombat' 
let g:airline_powerline_fonts = 1 

" vimspector config
let g:vimspector_enable_mappings = 'HUMAN'


colorscheme PaperColor "set colour scheme
set background=dark
set guifont=MesloLGLForPowerline-Regular:h15
"set guifont=Menlo:h15

set encoding=utf-8 
set fileformat=unix

" window config
set number
set lines=27
set columns=140
set signcolumn=yes

"tab behaviour
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set backspace=indent,eol,start

"search options
set nohlsearch
set incsearch
set smartcase

"hide output into normal status line
set noshowmode
set noshowcmd
set shortmess+=F

"highlight colour
hi Search guibg=#8787ab guifg=black

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
