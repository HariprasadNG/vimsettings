:set ai
:set nu
:set tags=tags;,refTags; 
:set tabstop=4
:set shiftwidth=4
:set expandtab
:inoremap {<CR> {<CR>}<Esc>O
:inoremap ( ()<Left>
:inoremap [ []<Left>
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
func! ListCodeComplete()
    call complete(col('.'), ['for() ', 'while() ', 'if() ', 'int main () '])
    return ''
endfunc
inoremap <F5> <C-R>=ListCodeComplete()<CR>
:set foldmethod=indent
":map \ zC ---> This mapping will create unnessary enter and backslash in the code.
":map <CR> zO
:map <F9> za
:map <F10> zA
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
