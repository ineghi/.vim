" On Top Confuguration
""""""""""""""""""""""""""""""""""""
let mapleader = ','

" Scripts
""""""""""""""""""""""""""""""""""""

" Install Vim Plug if he doesn't exist

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'godlygeek/tabular'
Plug 'gregsexton/matchtag'
Plug 'alvan/vim-closetag'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'kana/vim-arpeggio'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

" Themes

Plug 'lifepillar/vim-solarized8'
Plug 'ayu-theme/ayu-vim'

call plug#end()

" Configure FZF
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10split' }

nnoremap <silent> <C-p> :FZF<CR>

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Configure airline
let g:airline_theme='ayu'

" Configure netrw
let g:netrw_banner = 0

" Configure emmet

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
autocmd FileType html,css imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Configure Ale

let g:ale_completion_enabled = 1
let g:ale_lint_on_text_changed = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'

" Configure Indent line

let g:indentLine_enabled = 1
let g:indentLine_char = '.'
let g:indentLine_color_term = 239
let g:indent_guides_enable_on_vim_startup = 1

" Configure Arpeggio

call arpeggio#map('i', '', 0, 'jk', '<Esc>')

" Configure FZF
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>

" => Configuration
""""""""""""""""""""""""""""""""""""
syntax on
set redrawtime=10000
if (has("termguicolors"))
  set termguicolors
endif
set t_Co=256
set background=dark
let ayucolor="mirage"
colorscheme ayu

set encoding=UTF-8
set laststatus=2
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set autoindent
set backspace=indent,eol,start

set number
set showcmd
set ruler
" set cursorline
set mouse=a

filetype on
filetype indent on
 
set wildmenu
set showmatch

set incsearch
set hlsearch

" turn off auto wrapping
:set wrap!
