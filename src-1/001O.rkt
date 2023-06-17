#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(provide part:001O)

(define part:001O
  @example[
    #:id "001O"
    @paragraph{
      @($ unit-type)は可縮である。実際、@($ ((record-elem (seq (center . def-eq . unit-elem) (contraction . def-eq . (abs "x" (refl unit-elem))))) . elem-of . (is-contr unit-type)))を確かめられる。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:001O)))
