#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt")

(provide-part (id)
  @exercise[
    #:id id
    @paragraph{
      @${i}階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏、@($ ("F" . elem-of . (functor (seq "C" "D"))))を関手、@($ (("x" . _ . "1") . elem-of . "C"))と@($ (("x" . _ . "2") . elem-of . "C"))を対象、@($ ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))))を射とする。@${f}が同型ならば、@($ ("F" . fun-apply . "f"))は同型であることを示せ。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
