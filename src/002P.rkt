#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/id.rkt")

(provide-part (id)
  @exercise[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))を要素、@($ ("p" . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))を同一視とする。同一視@($ (@id-unit-l{p} . elem-of . (((refl ("a" . _ . "2")) . id-comp . "p") . id-type . "p")))と@($ (@id-unit-r{p} . elem-of . ("p" . id-type . ("p" . id-comp . (refl ("a" . _ . "1"))))))を構成せよ。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
