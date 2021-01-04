call plug#begin('~/.nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'

Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-clang'
Plug 'OmniSharp/omnisharp-vim'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'vim-latex/vim-latex'
Plug 'leafgarland/typescript-vim'

call plug#end()

" Exclude auto-generated or external files from ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Show line numbers
set number

" Enable syntax highlighting
syntax enable

" Spaces instead of tabs
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab

set list

" Enable deoplete plugin on startup
let g:deoplete#enable_at_startup = 1

" Use smartcase.
call deoplete#custom#option({'enable_smart_case': 1})

" Copy to clipboard
set clipboard=unnamedplus

" Vim response time
set updatetime=1000

" Show typed commands
set showcmd

" NERDTree config
nnoremap <leader>tt :NERDTreeToggle<CR>

" Show the preview in the bottom of a sreen
set splitbelow

" Tagbar config
nnoremap <leader>tb :TagbarToggle<CR>

let g:syntastic_cpp_config_file = ".syntastic_cpp_config"

" 100 characters' column
set cc=101
" 100 characters' column color
highlight ColorColumn ctermbg=0

" Custom macros
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction<Paste>

" Docker support
autocmd BufRead,BufNewFile *.dockerfile set filetype=dockerfile
