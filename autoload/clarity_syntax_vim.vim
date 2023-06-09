function! clarity_syntax_vim#JumpToDefinition()
  let l:word = expand('<cword>')
  let l:line = getline('.')
  let l:pattern = '^\s*\(define-\|use-trait\)\s*\(\s*\|\(\s*\ze\)\)' . l:word . '\>'
  let l:searchpos = searchpos(l:pattern, 'bnW')
  if l:searchpos != [0, 0]
    call cursor(l:searchpos[0], l:searchpos[1])
  endif
endfunction

function! clarity_syntax_vim#ClarinetCheck()
  let output = system('clarinet check')
  if v:shell_error
    echoerr output
  else
    echo output
  endif
endfunction
