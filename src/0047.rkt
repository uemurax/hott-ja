#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/id.rkt")

@exercise[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))を要素、@($ ("p" . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))を同一視とする。同一視@($ (@id-sym-inv-l{p} . elem-of . (((id-inv "p") . id-comp . "p") . id-type . (refl ("a" . _ . "1")))))と@($ (@id-sym-inv-r{p} . elem-of . (("p" . id-comp . (id-inv "p")) . id-type . (refl ("a" . _ . "2")))))を構成せよ。
  }
]
