let s:suite = themis#suite('dict')
let s:assert = themis#helper('assert')

function! s:suite.after_each() abort
  norm! gg"_dG
endfunction

function! s:suite.word_definition() abort
  let l:out = dict#dictionary(0, 'cow')
  let l:expected = '1 definition found
     
     From WordNet (r) 3.0 (2006) [wn]:
     
       cow
           n 1: female of domestic cattle: "`moo-cow'' is a child''s term"
                [syn: {cow}, {moo-cow}]
           2: mature female of mammals of which the male is called `bull''
           3: a large unpleasant woman
           v 1: subdue, restrain, or overcome by affecting with a feeling
                of awe; frighten (as with threats) [syn: {overawe}, {cow}]
     
  call s:assert.equal(l:out, l:expected)
endfunction
