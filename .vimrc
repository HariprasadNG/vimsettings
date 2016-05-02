:set ai
:set nu
:set tags=tags;
:set tabstop=4
:set shiftwidth=4
:set expandtab
:inoremap {<CR> {<CR>}<Esc>O
:inoremap ( ()<Left>
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
func! ListCodeComplete()
    call complete(col('.'), ['for()', 'while()', 'if()'])
    return ''
endfunc
inoremap <F5> <C-R>=ListCodeComplete()<CR>
