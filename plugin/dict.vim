" Vimscript Setup: {{{1
let s:save_cpo = &cpo
set cpo&vim

" Options: {{{1
if !exists('g:dict_dict_binary')
  let g:dict_dict_binary = 'dict'
endif

if !exists('g:dict_default_database')
  let g:dict_default_database = 'wn'
endif

if !exists('g:dict_default_thesaurus_database')
  let g:dict_default_thesaurus_database = 'moby-thesaurus'
endif

" Maps: {{{1
nnoremap <Plug>DictDictionary :echo dict#dictionary(0, expand('<cword>'))<CR>
nnoremap <Plug>DictThesaurus :echo dict#thesaurus(expand('<cword>'))<CR>

" Commands: {{{1
command! -nargs=+ -bang Dictionary echo dict#dictionary('<bang>' == '!', <f-args>)
command! -nargs=1 -bang Thesaurus echo dict#thesaurus(<f-args>)

" Teardown: {{{1
let &cpo = s:save_cpo

" Misc: {{{1
" vim: set ft=vim ts=2 sw=2 tw=78 et fdm=marker:
