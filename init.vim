if exists('g:gui_oni')
    call plug#begin('~/.vim/plugged')

    Plug 'Shougo/deoplete.nvim'
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'tpope/vim-sensible'

    call plug#end()
else
    call plug#begin('~/.vim/plugged')

    Plug 'Shougo/deoplete.nvim'
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'tpope/vim-sensible'
    Plug 'mxw/vim-jsx'

    " Neovim specific
    " Plug 'vim-syntastic/syntastic'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'elzr/vim-json'
    Plug 'zchee/deoplete-clang'
    Plug 'itchyny/lightline.vim'
    Plug 'majutsushi/tagbar'
    Plug 'vim-latex/vim-latex'
    Plug 'leafgarland/typescript-vim'
    " Plug 'lervag/vimtex'

    call plug#end()
endif

" Exclude auto-generated or external files from ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Show line numbers
set number

" Enable syntax highlighting
syntax enable

" Enable using language-specifig settings ~/.config/nvim/after/ftplugin
" filetype plugin on

" Spaces instead of tabs
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab

set list

" Editor config
" let g:EditorConfig_verbose = 1
" let g:EditorConfig_core_mode = 'external_command'

" Enable deoplete plugin on startup
let g:deoplete#enable_at_startup = 1

" Use smartcase.
let g:deoplete#enable_smart_case = 1

" Copy to clipboard
set clipboard=unnamedplus

if !exists('g:gui_oni')
    " Vim response time
    set updatetime=1000

    " Show typed commands
    set showcmd

    " NERDTree config
    nnoremap <leader>tt :NERDTreeToggle<CR>

    " Show the preview in the bottom of a sreen
    set splitbelow

    " Configure ctags
    " let g:tagbar_ctags_bin='/path/to/ctags/binaries'

    " Tagbar config
    nnoremap <leader>tb :TagbarToggle<CR>

    let g:syntastic_cpp_config_file = ".syntastic_cpp_config"
endif


" 80 characters' column
set cc=81
" 80 characters' column color
highlight ColorColumn ctermbg=0

" Custom macros
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction<Paste>

" Docker support
autocmd BufRead,BufNewFile *.dockerfile set filetype=dockerfile
