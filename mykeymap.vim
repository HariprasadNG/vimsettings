"
"execute pathogen#infect()

"""clang_autocomplete
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
"let g:clang_library_path = "/usr/lib/"

"""OmniCPPCompleteSetting.
"au BufNewFile,BufRead,BufEnter *.cpp,*.hpp,*.cc,*.c,*.h,*.C set omnifunc=omni#cpp#complete#Main
"let OmniCpp_MayCompleteDot = 1 " autocomplete with .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
"let OmniCpp_SelectFirstItem = 2 " select first item ()but don't insert)
"let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype ()i.e. parameters) in popup window
"set completeopt=menuone,preview
"set completeopt+=preview

"""My personal seetings
set tags=./tags;/
filetype plugin on 
filetype plugin indent on
"set tags+=~/.vim/tags/tags
set expandtab
set shiftwidth=4
set softtabstop=4
set ai
set shiftwidth=4
"set smartindent
set cindent
noremap <F6> v%
inoremap { {<CR>}<UP><ESC>A
"inoremap ( ()

