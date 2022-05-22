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
call plug#end()
" End of plugin management

syntax on
set background=dark
colorscheme solarized

" Common keymap
noremap ; :
nnoremap L $
nnoremap H ^
let mapleader = " "

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

nnoremap <leader><leader>n :NERDTreeFocus<CR>
nnoremap <leader><leader>t :NERDTreeToggle<CR>
nnoremap <leader><leader>f :NERDTreeFind<CR>

set vb

if has("gui_running")
  syntax on
  set hlsearch
  colorscheme solarized
  set bs=2
  set ai
  set ruler
endif
