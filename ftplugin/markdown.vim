" ===========================================================================
" FILE        : ftplugin/markdown.vim
" DESCRIPTION : Work with markdown docuemts.
" MAINTAINER  : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : Sun Feb  6 15:48:46 CST 2022
" CREATION    : Wed Apr 20 01:08:50 CDT 2016
" ===========================================================================

setlocal nolinebreak
setlocal foldlevel=2
setlocal noexpandtab


" Folding
autocmd BufEnter *.md setlocal foldexpr=markdown#level()
autocmd BufEnter *.md setlocal foldmethod=expr

" Toggle headers for markdown documents
autocmd
      \ FileType markdown nnoremap <buffer> <silent> <leader>1
      \ :call markdown#toggleheading(1)<CR>
autocmd
      \ FileType markdown nnoremap <buffer> <silent> <leader>2
      \ :call markdown#toggleheading(2)<CR>
autocmd
      \ FileType markdown nnoremap <buffer> <silent> <leader>3
      \ :call markdown#toggleheading(3)<CR>
autocmd
      \ FileType markdown nnoremap <buffer> <silent> <leader>4
      \ :call markdown#toggleheading(4)<CR>
autocmd
      \ FileType markdown nnoremap <buffer> <silent> <leader>5
      \ :call markdown#toggleheading(5)<CR>
autocmd
      \ FileType markdown nnoremap <buffer> <silent> <leader>6
      \ :call markdown#toggleheading(6)<CR>

" Generate the HTML document
autocmd
      \ FileType markdown nnoremap <buffer> <silent> <leader>p
      \ :call markdown#preview()<CR><C-l>

" Format key mappings
autocmd FileType markdown nnoremap <buffer> <C-b> ciw****<ESC>hP
autocmd FileType markdown nnoremap <buffer> <C-k> ciw**<ESC>P
autocmd FileType markdown nnoremap <buffer> <C-c> ciw``<ESC>P

autocmd FileType markdown vnoremap <buffer> <C-b> c****<ESC>hP
autocmd FileType markdown vnoremap <buffer> <C-k> c**<ESC>P
autocmd FileType markdown vnoremap <buffer> <C-c> c``<ESC>P

