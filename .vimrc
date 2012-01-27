" general settings
"
:syntax on
:set number
:colorscheme inkpot
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set incsearch
:set cursorline

" Makefile settings
"
" Tabs are important in Makefiles
:autocmd FileType make setlocal noexpandtab

" ctags settings
"
" This sets tags to a ctags.tags file in the current dir.
" This is nice for multiple projects (the path is relative).
:set tags=./tags;

" python settings
"
" If the open file is a .py file, show a visual error if line length >= 80 chars.
" This makes pep8 happy.
:autocmd BufRead,BufNewFile *.py match ErrorMsg '\%>79v.\+'
" When a .py file is written, recreate tags in the current dir.
au BufWritePost *.py silent! !ctags -R &
