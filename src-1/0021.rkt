#lang at-exp typed/racket

(require "lib/markup.rkt")

(provide part:0021)

(define part:0021
  @section[
    #:id "0021"
    #:title @%{一価性から関数外延性を導く}
    @paragraph{
      実は、一価性公理から関数外延性公理が導出される(@ref["007D"])。
    }
    (include-part "0079.rkt")
    (include-part "007A.rkt")
    ;part:007B
    ;part:007C
    ;part:007D
  ])

(module+ main
  (require morg/text)
  (display (->text part:0021)))
