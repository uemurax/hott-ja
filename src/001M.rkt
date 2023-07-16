#lang morg

(require "lib/math/id.rkt"
         "lib/markup/example.rkt"
         "lib/math.rkt")

@example[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))を要素、@($ ("p" . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))を同一視とする。同一視@($ (@id-extension-self{p} . elem-of . ((id-extension (seq "p" "p")) . id-type . (refl ("a" . _ . "2")))))を次のように構成する。同一視型の帰納法により、@($ ("a" . _ . "2"))が@($ ("a" . _ . "1"))で@${p}が@($ (refl ("a" . _ . "1")))の場合を考えれば十分である。定義より@($ ((id-extension (seq (refl ("a" . _ . "1")) (refl ("a" . _ . "1")))) . def-eq . (refl ("a" . _ . "1"))))なので@($ ((id-extension-self (refl ("a" . _ . "1"))) . def-eq . (refl (refl ("a" . _ . "1")))))と定義する。形式的に書けば@($ (@id-extension-self{p} . def-eq . (id-ind (seq "p" (abs (seq "x" "z") ((id-extension (seq "z" "z")) . id-type . @refl{x})) (refl (refl ("a" . _ . "1")))))))である。
  }
]
