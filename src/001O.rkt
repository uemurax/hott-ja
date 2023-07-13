#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/example.rkt"
         "lib/math.rkt")

(provide-part (id)
  @example[
    #:id id
    @paragraph{
      @($ unit-type)は可縮である。実際、@($ ((record-elem (seq (center . def-eq . unit-elem) (contraction . def-eq . (abs "x" (refl unit-elem))))) . elem-of . (is-contr unit-type)))を確かめられる。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
