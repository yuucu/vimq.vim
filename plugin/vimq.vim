if exists('g:loaded_vimq')
  finish
endif
let g:loaded_vimq = 1

command! -nargs=1 Vimq call vimq#Exec(<q-args>)
