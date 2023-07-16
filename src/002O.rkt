#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/id.rkt")

@example[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))と@($ (("a" . _ . "3") . elem-of . "A"))と@($ (("a" . _ . "4") . elem-of . "A"))を要素、@($ (("p" . _ . "1") . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))と@($ (("p" . _ . "2") . elem-of . (("a" . _ . "2") . id-type . ("a" . _ . "3"))))と@($ (("p" . _ . "3") . elem-of . (("a" . _ . "3") . id-type . ("a" . _ . "4"))))を同一視とする。同一視@($ ((id-assoc (seq ("p" . _ . "3") ("p" . _ . "2") ("p" . _ . "1"))) . elem-of . (((("p" . _ . "3") . id-comp . ("p" . _ . "2")) . id-comp . ("p" . _ . "1")) . id-type . (("p" . _ . "3") . id-comp . (("p" . _ . "2") . id-comp . ("p" . _ . "1"))))))を構成する。同一視型の帰納法により、@($ ((id-assoc (seq ("p" . _ . "3") ("p" . _ . "2") (refl ("a" . _ . "1")))) . def-eq . (refl (("p" . _ . "3") . id-comp . ("p" . _ . "2")))))と定義すればよい。
  }
]
