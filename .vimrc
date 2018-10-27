call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Chiel92/vim-autoformat'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdcommenter'
Plug 'pangloss/vim-javascript'
call plug#end()

"General settings
set nu
set mouse=a
set autowrite

"Set tabs
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set nopaste	
"Set my own awgroup
augroup jwc
    autocmd!
augroup END
au FileType cpp setlocal tabstop=2 shiftwidth=2 expandtab

"Compile and run
function! Run()
    if &ft == 'cpp'
        make %:r.bin
        ! ./%:r.bin
    elseif &ft == 'python'
        !/usr/bin/env python %
    endif
endfunction
nnoremap <leader>b :call Run()<CR>

"Format code
nnoremap <C-f> :Autoformat<CR>
let g:formatters_python = ['yapf']

"Short cut to edit vim settings
command! Set tabedit $MYVIMRC
autocmd jwc BufWritePost ~/.vimrc   so $MYVIMRC

"Copy all until main method
function! CopyAllExceptMain()
    let cursor = getcurpos()
    call setpos('.', [bufnr("%"), 1, 1, 0])
    let end = search('int *main(', 'n')
    let end = end == 0 ? line('$') : end - 1
    execute "4," end "y +"
    call setpos('.', cursor)
endfunction
"Copy content to clipboard
nnoremap <leader>a gg"*yG<CR>
nnoremap <leader>y :call CopyAllExceptMain()<CR>
nnoremap <leader>p Go<ESC>"*p<CR>

" Nerdtree Plugin
map <C-n> :NERDTreeToggle<CR>
" close when only nerdtree/scratchpad left
function! CloseWhenNoFile() 
    if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())
        q
    endif
endfunction
au jwc BufLeave * call CloseWhenNoFile()
" Ignore certain files
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.bin', '.git']

" Ignore in ctrlp
let g:ctrlp_custom_ignore = ['\v[\/]\.node_modules']

"YouCompleteMe
let g:ycm_confirm_extra_conf=0
let g:ycm_complete_in_comments=1

au jwc BufNewFile *.cpp call append(0, ["#include <bits/stdc++.h>", "#include \"leetcode.h\"", "using namespace std;"])
"Jump out of brackets
if !exists('g:AutoPairsShortcutJump')
  let g:AutoPairsShortcutJump = '<M-n>'
endif
