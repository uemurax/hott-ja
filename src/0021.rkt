#lang at-exp typed/racket

(require "lib/markup.rkt")

(provide-part (id)
  @section[
    #:id id
    #:title @%{一価性から関数外延性を導く}
    @paragraph{
      実は、一価性公理から関数外延性公理が導出される(@ref["007D"])。
    }
    (include-part "0079.rkt")
    (include-part "007A.rkt")
    (include-part "007B.rkt")
    (include-part "007C.rkt")
    (include-part "007D.rkt")
  ])

(module+ main
  (require morg/text)
  (preview))
