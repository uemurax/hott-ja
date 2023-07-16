#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/id.rkt")

@example[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族とする。要素@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))と@($ (("a" . _ . "3") . elem-of . "A"))と同一視@($ (("p" . _ . "1") . elem-of . (("a" . _ . "1") . id-type . ("a" . _ ."2"))))と@($ (("p" . _ . "2") . elem-of . (("a" . _ . "2") . id-type . ("a" . _ . "3"))))に対して、同一視@($ ((transport-comp (seq "B" ("p" . _ . "2") ("p" . _ . "1"))) . elem-of . ((transport (seq "B" (("p" . _ . "2") . id-comp . ("p" . _ . "1")))) . id-type . ((transport (seq "B" ("p" . _ . "2"))) . fun-comp . (transport (seq "B" ("p" . _ . "1")))))))を構成できる。実際、@($ ((transport-comp (seq "B" ("p" . _ . "2") (refl ("a" . _ . "1")))) . def-eq . (refl blank)))と定義すればよい。
  }
]
