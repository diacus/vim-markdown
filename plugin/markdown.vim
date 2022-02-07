" ===========================================================================
" FILE        : plugin/markdown.vim
" DESCRIPTION : Vim configuration for markdown
" CREATED BY  : @diacus (diacus.magnuz@gmail.com)
" CREATION    : Sun Feb  6 15:57:26 CST 2022
" ===========================================================================
autocmd BufNewFile,BufRead *.md set filetype=markdown

nnoremap <leader>p :call markdown#preview()<CR><CR>

call markdown#setup()

" Headers for markdown documents
nnoremap <leader>h1  I#<space><ESC>
nnoremap <leader>h2  I##<space><ESC>
nnoremap <leader>h3  I###<space><ESC>
nnoremap <leader>h4  I####<space><ESC>
nnoremap <leader>h5  I#####<space><ESC>
nnoremap <leader>h6  I######<space><ESC>

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
