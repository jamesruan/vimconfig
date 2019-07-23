execute pathogen#infect()
syntax on
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
set ruler
set laststatus=2
set list lcs=tab:»\ ,trail:·
set completeopt=menu

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

" syntastics
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" vim-coffee-script
filetype plugin indent on

nmap <C-n> :NERDTreeToggle<CR>
autocmd QuickFixCmdPost *make* cwindow

autocmd FileType erlang set expandtab
autocmd FileType go let g:syntastic_go_checkers =['gotype', 'vet', 'gofmt']

autocmd FileType javascript set expandtab
let g:syntastic_javascript_checkers = ['eslint']

let g:plantuml_executable_script = 'plantuml -tsvg'

