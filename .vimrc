:syntax on
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set incsearch

" If the open file is a .py file, show a visual error if line length >= 80 chars:
:autocmd BufRead,BufNewFile *.py match ErrorMsg '\%>79v.\+'
:set number
:colorscheme inkpot
:set cursorline
