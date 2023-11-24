let g:tagbar_type_markdown = {
        \ 'ctagstype' : 'markdown',
        \ 'kinds' : [
                \ 'h:headings',
        \ ],
    \ 'sort' : 0
\ }

set autoindent expandtab ts=4
syntax on
filetype plugin on

let mapleader = "\<space>"
imap <C-d> <ESC>
nmap <leader>f :NERDTreeToggle<CR>
nmap <leader>l :TagbarToggle<CR>
vmap <leader>y "*y
nmap <leader>p "*p
vmap // y/<C-r>"<cr>
