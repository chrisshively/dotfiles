call pathogen#infect()
filetype plugin indent on

"display line numbers
set number 

" instead of tabs it puts spaces
set expandtab

"tab=2spaces
set ts=4

"bulk indent with 2 spaces
set sw=4

"syntax highlight
syntax enable

"colorscheme solarized
"set background=light "dark || light
colorscheme wombat
"colorscheme railscast
"colorscheme molokai
"colorscheme Monokai-Refined

"mapping that opens NERDTree explorer
map <F2> :NERDTreeToggle %:p:h<CR>

"mapping that opens JSHint javascript linter
map <F3> :JSHint <Enter>

"mapping CoffeeLint 
map <F4> :CoffeeLint \| cwindow <Enter>

"ignore certain folder types and filetypes
let g:ctrlp_custom_ignore = 'node_modules\|\.git'

"automatically run linters on saving certain filetypes.
"autocmd BufWritePost *.js JSHint
"autocmd BufWritePost *.json JSHint
"autocmd BufWritePost *.coffee CoffeeLint | cwindow

"text is not wrapped
set nowrap

"remove toolbar
:set guioptions-=T
:set guioptions-=m
:set guioptions-=r

" removes scrolls from NERDTree
:set guioptions-=L

set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files

" set the path to coffeescript and coffeelint compilers
let coffee_compiler = '/usr/local/bin/coffee'
let coffee_linter = '/usr/local/bin/coffeelint'

" set configuration options for coffee
" let coffee_lint_options = '-f ~/.vim/conf/coffeelint.json'

"disable automatic newline insertion at the end of all edited files
"set binary

"map vim buffers list
:nnoremap <F5> :buffers<CR>:buffer<Space>

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

" search in project using ackgrp
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

"hightlight the 80th column
set colorcolumn=80

"hightlight search results
set hlsearch

"set smart indent that will automatically indent on [ or {
set smartindent

"automatically do syntax highlight for html for these filetypes, uberVU only
au BufRead *.hjs set filetype=html

"class explorer
nmap <F8> :TagbarToggle<CR>

"highlight line on cursor
set cursorline

"font size
set guifont=Inconsolata\ 10

"highlight trailing white spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" remap ESC to jj so you can switch to command mode quickly
" inoremap jj <ESC>
