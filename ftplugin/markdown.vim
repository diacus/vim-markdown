" ===========================================================================
" FILE        : ftplugin/markdown.vim
" DESCRIPTION : Work with markdown docuemts.
" MAINTAINER  : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : Sun Feb  6 15:48:46 CST 2022
" CREATION    : Wed Apr 20 01:08:50 CDT 2016
" ===========================================================================

call markdown#setup()

" Headers for markdown documents
nnoremap <leader>h1  I#<space><ESC>
nnoremap <leader>h2  I##<space><ESC>
nnoremap <leader>h3  I###<space><ESC>
nnoremap <leader>h4  I####<space><ESC>
nnoremap <leader>h5  I#####<space><ESC>
nnoremap <leader>h6  I######<space><ESC>

" Generate the HTML document
nnoremap <F9> call markdown#preview()<CR><C-l>

" Format key mappings
nnoremap <C-b> ciw****<ESC>hP " Markdown make text style "bold"
nnoremap <C-k> ciw**<ESC>P    " Markdown make text style "italic"
nnoremap <C-c> ciw``<ESC>P    " Markdown make text style "code"

vnoremap <C-b> c****<ESC>hP " Markdown make text style "bold"
vnoremap <C-k> c**<ESC>P    " Markdown make text style "italic"
vnoremap <C-c> c``<ESC>P    " Markdown make text style "code"

" Folding
au BufEnter *.md setlocal foldexpr=markdown#level()
au BufEnter *.md setlocal foldmethod=expr
