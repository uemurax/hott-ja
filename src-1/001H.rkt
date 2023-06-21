#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/comparison.rkt"
         "lib/math.rkt")

(provide part:001H)

(define part:001H
  @comparison[
    #:id "001H"
    @paragraph{
      述語論理において、@emph{対称律}@($ ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . fun-type . (("x" . _ . "2") . id-type . ("x" . _ . "1"))))と@emph{推移律}@($ ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . fun-type . ((("x" . _ . "2") . id-type . ("x" . _ . "3")) . fun-type . (("x" . _ . "1") . id-type . ("x" . _ . "3")))))が成り立つ。@ref["001E"]はこの類似である。ちなみに、@($ (@refl{x} . elem-of . ("x" . id-type . "x")))は@emph{反射律}とも思える。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:001H)))
