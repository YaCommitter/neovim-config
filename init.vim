call plug#begin('~/.nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'pangloss/vim-javascript'
Plug 'editorconfig/editorconfig-vim'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Allow editing multiple buffers without saving
set hidden

" Exclude auto-generated or external files from ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Show line numbers
set number

" Enable syntax highlighting
syntax enable

" Show hidden characters
set list

" Copy to clipboard
set clipboard=unnamedplus

" NERDTree config
nnoremap <leader>tt :NERDTreeToggle<CR>

" Show the preview in the bottom of a sreen
set splitbelow

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
