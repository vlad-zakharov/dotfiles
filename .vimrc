filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=8
" when indenting with '>', use 4 spaces width
" set shiftwidth=4
" On pressing tab, insert 4 spaces
" set expandtab
syntax on
set number
set fileformat=unix

" view identation correctly
set listchars=tab:»-,trail:·,extends:»,precedes:«
nmap t :set list<CR>
nmap T :set nolist<CR>

" highlight more than 80 characters at line
nmap <F8> :match Error /\%81v.\+/<CR>
nmap <F9> :match<CR>

" Hotkeys for tab management
nmap ,n :tabnew<space>
nmap ,c :tabclose<CR>
nmap <F3> :tabN<CR>
nmap <F4> :tabn<CR>
nmap ,co :tabonly<CR>
nmap ,, :tabn<space>
nmap m :noh<CR>
