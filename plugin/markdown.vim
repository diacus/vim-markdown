" ===========================================================================
" FILE        : plugin/markdown.vim
" DESCRIPTION : Users's Vim configuration
" CREATED BY  : @diacus (diacus.magnuz@gmail.com)
" CREATION    : Sun Feb  6 15:57:26 CST 2022
" ===========================================================================
autocmd BufNewFile,BufRead *.md set filetype=markdown

nnoremap <leader>p :call markdown#preview()<CR><CR>
