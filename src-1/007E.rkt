#lang at-exp typed/racket

(require morg/markup)

(require "HoTT-Book.rkt")

(provide part:007E)

(define part:007E
  @section[
    #:id "007E"
    #:title @%{参考文献}
    part:HoTT-Book
  ])

(module+ main
  (require morg/text)
  (display (->text part:007E)))
