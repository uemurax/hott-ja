#lang at-exp typed/racket

(require "lib/markup.rkt")

(provide part:007F)

(define part:007F
  @section[
    #:id "007F"
    #:title @%{索引}
    @print-index[]
  ])

(module+ main
  (require morg/text)
  (display (->text part:007F)))
