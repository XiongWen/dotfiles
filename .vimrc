" Manage plugins with vim-plug.
call plug#begin()
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'godlygeek/tabular'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'rust-lang/rust.vim'
call plug#end()
" End of plugin management

syntax on
filetype plugin indent on
set background=dark
colorscheme solarized
set vb
" set cursor shape
" Insert mode: solid vertical bar
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" Replace mode: solid underscore
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" Normal mode: solid block
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Common keymap
noremap ; :
nnoremap L $
nnoremap H ^
let mapleader = " "

" Plugin: easymotion
map <Leader> <Plug>(easymotion-prefix)
" nmap <Leader>2s <Plug>(easymotion-s2)
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1
hi EasyMotionTarget ctermbg=32 ctermfg=231 "x032_DeepSkyBlue3, x231_Grey100
hi EasyMotionShade  ctermbg=none ctermfg=none

let g:multi_cursor_select_all_word_key = '<S-C-a>'
let g:multi_cursor_select_all_key      = 'g<S-C-a>'

" Plugin: NERDTree
nnoremap <leader><leader>n :NERDTreeFocus<CR>
nnoremap <leader><leader>t :NERDTreeToggle<CR>
nnoremap <leader><leader>f :NERDTreeFind<CR>

" Plugin: FZF
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-t> :GFiles<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

if has("gui_running")
  syntax on
  set hlsearch
  colorscheme solarized
  set bs=2
  set ai
  set ruler
endif
