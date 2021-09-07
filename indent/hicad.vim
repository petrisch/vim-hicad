" indent/hicad.vim
" Still from the swift example
setlocal indentexpr=HicadIndent()

function! HicadIndent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum - 1)
  let previous = getline(previousNum)

  if previous =~ "{" && previous !~ "}" && line !~ "}" && line !~ ":$"
    return indent(previousNum) + &tabstop
  endif

endfunction
