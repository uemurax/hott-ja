#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/comparison.rkt"
         "lib/math.rkt")

(provide part:001I)

(define part:001I
  @comparison[
    #:id "001I"
    @paragraph{
      述語論理において、@${f}を一変数の関数とすると、@($ ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . fun-type . (("f" . fun-apply . ("x" . _ . "1")) . id-type . ("f" . fun-apply . ("x" . _ . "2")))))が成り立つ。これは関数が等しさを保つことを表す。@ref["001F"]はこの類似で、型理論において関数は同一視を保つことを表す。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:001I)))
