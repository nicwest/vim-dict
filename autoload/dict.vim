" Vimscript Setup: {{{1
let s:save_cpo = &cpo
set cpo&vim

" Library Interface: {{{1
function! dict#dictionary(bang, word, ...) abort
  let l:database = get(a:, 1, g:dict_default_database)
  let l:bin = g:dict_dict_binary
  return system(l:bin . ' --database=' . l:database . ' ' . a:word)
endfunction

function! dict#thesaurus(word) abort
  return dict#dictionary(0, a:word, g:dict_default_thesaurus_database)
endfunction

" Teardown:{{{1
let &cpo = s:save_cpo

" Misc: {{{1
" vim: set ft=vim ts=2 sw=2 tw=78 et fdm=marker:
