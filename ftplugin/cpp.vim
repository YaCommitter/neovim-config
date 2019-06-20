if !exists('g:gui_oni')
    " oni has integrated cpp support
    let g:deoplete#sources#clang#libclang_path='/usr/lib/llvm-6.0/lib/libclang.so'
    let g:deoplete#sources#clang#clang_header='/usr/include/clang'

    " Automatic syntax check on events (TextChanged requires Vim 7.4)
    autocmd BufEnter,TextChanged,InsertLeave *.cp SyntasticCheck
endif
