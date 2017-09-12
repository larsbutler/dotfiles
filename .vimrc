" general settings
"
syntax on
set number
set ruler
colorscheme inkpot
set expandtab
set tabstop=4
set shiftwidth=4
set incsearch
set cursorline
set nohidden
set list listchars=tab:»·,trail:·
set backspace=indent,eol,start
" Highlight all search results
set hlsearch
hi Search   cterm=BOLD  ctermfg=NONE    ctermbg=blue
hi IncSearch    cterm=BOLD  ctermfg=NONE    ctermbg=red
" setlocal spell spelllang=en_us

" Use tree style listing in Explore mode
let g:netrw_liststyle = 3

" Makefile settings
"
" Tabs are important in Makefiles
autocmd FileType make setlocal noexpandtab

" golang settings
" go fmt also prefers tabs to spaces
autocmd FileType go setlocal noexpandtab
autocmd FileType go set nolist

" 2 space tabs in clojure source:
autocmd FileType clojure setlocal tabstop=2
autocmd FileType clojure setlocal shiftwidth=2

" ctags settings
"
" This sets tags to a ctags.tags file in the current dir.
" This is nice for multiple projects (the path is relative).
set tags=./tags;

" python settings
"
" If the open file is a .py file, show a visual error if line length >= 80 chars.
" This makes pep8 happy.
autocmd BufRead,BufNewFile *.py :match ErrorMsg '\%>79v.\+'
autocmd FileType python set textwidth=79

" Some files need to have a tab width of 2:
autocmd FileType javascript,json,yaml,html setlocal tabstop=2
autocmd FileType javascript,json,yaml,html setlocal shiftwidth=2
" Display an error in .js files as well if the line grows beyond 79 chars.
autocmd BufRead,BufNewFile *.js :match ErrorMsg '\%>79v.\+'
autocmd BufRead,BufNewFile *.js :match ErrorMsg '\%>79v.\+'
" set javascript syntax highlighting for .json files
autocmd BufRead,BufNewFile *.json :setf javascript

" git settings
"
" For well-crafted git commit messages,
" limit the length of messages to 72 chars
autocmd FileType gitcommit :match ErrorMsg '\%>72v.\+'
autocmd FileType gitcommit set textwidth=72

" markdown settings
autocmd BufRead,BufNewFile *.md :set syntax=markdown

" BNF settings
autocmd BufRead,BufNewFile *.bnf :set syntax=bnf

" Trim trailing whitespace:
function TrimWhiteSpace()
    " Don't strip whitespace on these filetypes
    if &ft =~ 'diff'
        return
    endif
    " Same thing for .t files (used for cram tests)
    if &ft =~ 'tads'
        return
    endif
    %s/\s*$//
    ''
endfunction

autocmd FileWritePre   * :call TrimWhiteSpace()
autocmd FileAppendPre  * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre    * :call TrimWhiteSpace()

" disable audio bell in macvim
autocmd! GUIEnter * set vb t_vb=
