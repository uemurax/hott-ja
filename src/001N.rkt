#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt")

@proposition[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("a" . elem-of . "A"))を要素とする。型@($ (d-pair-type ("x" . elem-of . "A") ("a" . id-type . "x")))は可縮である。
  }
  #:proof @proof[
    @paragraph{
      要素@($ ("c" . elem-of . (d-pair-type ("x" . elem-of . "A") ("a" . id-type . "x"))))と@($ ("r" . elem-of . (d-fun-type ("z" . elem-of . (d-pair-type ("x" . elem-of . "A") ("a" . id-type . "x"))) ("c" . id-type . "z"))))を構成すればよい。@($ ("c" . def-eq . (pair (seq "a" @refl{a}))))と定義する。@${r}については、カリー化(@ref["0014"])により、@($ (d-fun-type ("x" . elem-of . "A") (d-fun-type ("w" . elem-of . ("a" . id-type . "x")) ("c" . id-type . (pair (seq "x" "w"))))))の要素を構成すればよい。同一視型の帰納法により、@($ ("c" . id-type . (pair (seq "a" @refl{a}))))の要素を構成すればよいが、@${c}の定義より@${@refl{c}}とすればよい。
    }
  ]
]