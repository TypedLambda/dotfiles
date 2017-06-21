" command to record a vim command output to a buffer
command! -nargs=* -complete=command Bufferize call s:Bufferize(<q-args>)
function! s:Bufferize(cmd)
  let cmd = a:cmd
  redir => output
  silent exe cmd
  redir END

  new
  setlocal nonumber
  call setline(1, split(output, "\n"))
  set nomodified
endfunction
