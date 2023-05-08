nnoremap <silent> <leader>jd :call JumpToDefinition()<CR>

function! JumpToDefinition()
  let l:word = expand('<cword>')
  let l:line = getline('.')
  let l:pattern = '^\s*\(define-\|use-trait\)\s*\(\s*\|\(\s*\ze\)\)' . l:word . '\>'
  let l:searchpos = searchpos(l:pattern, 'bnW')
  if l:searchpos != [0, 0]
    call cursor(l:searchpos[0], l:searchpos[1])
  endif
endfunction
