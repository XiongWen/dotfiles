call plug#begin('~/.config/nvim/plugged')
Plug 'overcache/NeoSolarized'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'godlygeek/tabular'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'hoob3rt/lualine.nvim'
Plug 'klen/nvim-test'
Plug 'simrat39/rust-tools.nvim'
Plug 'tpope/vim-fugitive'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'
" For luasnip
"Plug 'L3MON4D3/LuaSnip'
"Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

call plug#end()

set rtp+=/opt/homebrew/opt/fzf
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c> # fix fzf popup does not close by pressing <esc>
set encoding=utf-8
" Ignore case when searching
set ignorecase
set nohls
set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
set background=dark
syntax enable
" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  colorscheme NeoSolarized
endif
" Use OSX clipboard to copy and to paste
set clipboard+=unnamedplus
set number
nnoremap <C-i> <C-i> " override Ctrl + i to maintain it's function for navigation as there is Tab key override below 
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set smarttab
set expandtab
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
" Tabs
nmap tl :tabs<CR>
nmap te :tabedit<CR>
nmap tc :tabclose<CR>
nmap <S-Tab> :tabprev<CR>
nmap <Tab> :tabnext<CR>
" Split window
nmap ss :split<CR><C-w>w
nmap sv :vsplit<CR><C-w>w
nmap sc <C-w>q
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap s<left> <C-w><
nmap s<right> <C-w>>
nmap s<up> <C-w>+
nmap s<down> <C-w>-
" neovim terminal
tnoremap <Esc> <C-\><C-n>
	
" Common keymap
noremap ; :
nnoremap L $
nnoremap H ^
let mapleader = " "

" Commands
" close all buffers except current one
command! BufOnly execute '%bdelete|edit#|bdelete#'

" Plugin: easymotion
map <Leader> <Plug>(easymotion-prefix)
nmap <Leader>2s <Plug>(easymotion-s2)
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1
"hi EasyMotionTarget ctermbg=32 ctermfg=231 "x032_DeepSkyBlue3, x231_Grey100
"hi EasyMotionShade  ctermbg=none ctermfg=none

let g:multi_cursor_select_all_word_key = '<S-C-a>'
let g:multi_cursor_select_all_key      = 'g<S-C-a>'

" Plugin: NERDTree
nnoremap <leader><leader>n :NERDTreeFocus<CR>
nnoremap <leader><leader>t :NERDTreeToggle<CR>
nnoremap <leader><leader>f :NERDTreeFind<CR>

" Plugin: FZF
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-t> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>hf :BCommits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

lua require('myplugins')

" show hover doc
nnoremap <silent>K :Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
nnoremap <silent> <C-j> :Lspsaga diagnostic_jump_next<CR>

" vim-test
nmap <silent> ,tt :TestNearest<CR>
nmap <silent> ,tf :TestFile<CR>
nmap <silent> ,ta :TestSuite<CR>
nmap <silent> ,tl :TestLast<CR>
nmap <silent> ,tg :TestVisit<CR>

" Plugin: vsnip
" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
" Use snippet for multiple filetypes
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']
