call pathogen#infect()
syntax on
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=8
set tabstop=8
set ruler
set laststatus=2
set list lcs=tab:»\ ,trail:·

let g:molokai_original = 1
let g:airline_theme='molokai'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline#extensions#tagbar#enabled = 1

nmap <C-J> :TagbarOpenAutoClose<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

nmap <C-n> :NERDTreeToggle<CR>
autocmd FileType javascript set ts=4
autocmd FileType javascript set sw=4
autocmd FileType coffeescript set ts=4
autocmd FileType coffeescript set sw=4
autocmd FileType html set ts=4
autocmd FileType html set sw=4
autocmd FileType go set makeprg=go\ build
autocmd QuickFixCmdPost *make* cwindow
