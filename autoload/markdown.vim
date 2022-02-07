" ===========================================================================
" FILE        : autoload/markdown.vim
" DESCRIPTION : Helper fuctions for ftplugin/markdown.vim
" MAINTAINER  : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : Mon Apr  6 15:37:56 CDT 2020
" CREATION    : vie ago  4 01:29:21 CDT 2017
" VERSION     : 2.1
" ===========================================================================

let s:headings = [
      \{ 'pattern': '^# .*$',      'level': '>1', 'value': 1 },
      \{ 'pattern': '^## .*$',     'level': '>2', 'value': 2 },
      \{ 'pattern': '^### .*$',    'level': '>3', 'value': 3 },
      \{ 'pattern': '^#### .*$',   'level': '>4', 'value': 4 },
      \{ 'pattern': '^##### .*$',  'level': '>5', 'value': 5 },
      \{ 'pattern': '^###### .*$', 'level': '>6', 'value': 6 }
      \]

function! markdown#level()
  for heading in s:headings
    if getline(v:lnum) =~ heading.pattern
      return heading.level
    endif
  endfor
  return "="
endfunction

function markdown#toggleheading(level)
  let heading = s:headings[a:level - 1]
  let ln = getline(".")

  if ln =~ heading.pattern
    substitute/^#\+ //
  else
    let headingmark = repeat("#", heading.value)
    let subcmd = "s/^\\(#\\+ \\)\\?/" . headingmark . " /"
    execute subcmd
  endif
endfunction

function! markdown#preview()
  write
  execute '!pandoc % | lynx -stdin'
endfunction
