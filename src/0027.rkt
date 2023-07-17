#lang morg

(require "lib/math/id.rkt"
         "lib/markup/example.rkt"
         "lib/math.rkt")

@example[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))を要素、@($ ("p" . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))を同一視とする。同一視@($ (@id-sym-sym{p} . elem-of . (@id-inv{@id-inv{p}} . id-type . "p")))を帰納法により@($ ((id-sym-sym (refl ("a" . _ . "1"))) . def-eq . (refl (refl ("a" . _ . "1")))))と定義する。
  }
]