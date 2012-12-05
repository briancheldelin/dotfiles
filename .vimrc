" My vimrc file

" Most of this is barrowed from mbrochh
" Located at https://github.com/mbrochh/mbrochh-dotfiles

" Autocommand to reload vimrc on save
autocmd! bufwritepost .vimrc source %

" Needed for pathogen setup
call pathogen#infect() 

" General Options
"================
set autoread  " relaod file when changes happen in other editors
syntax on

" Custom mappings
" ================
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation
map <Leader>a ggVG  " select all

" Mouse and backspace
set mouse=a
set bs=2

set history=700
set undolevels=700

set tabstop=4
set shiftwidth=4
set expandtab

set hlsearch
set incsearch
set ignorecase
set smartcase

set nowrap
set tw=79
set fo-=t
set number

"==================================
"       Python IDE Setup
"==================================

" Settings for vim-powerline
set laststatus=2

" Settings for ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" settings for python-mode
" =========================
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Show trailing whitespace
" =========================
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
map <Leader>x :%s/\s\+$//

" Color scheme
" =============
set t_Co=256
color wombat256mod

set colorcolumn=80
highlight ColorColumn ctermbg=233
