#lang at-exp typed/racket

(require "lib/markup.rkt")

(require "HoTT-Book.rkt"
         "van_den_Berg-Garner-2011-0000.rkt"
         "Lumsdaine-2010-0000.rkt")

(provide part:007E)

(define part:007E
  @section[
    #:id "007E"
    #:title @%{参考文献}
    part:HoTT-Book
    part:Lumsdaine-2010-0000
    part:van_den_Berg-Garner-2011-0000
  ])

(module+ main
  (require morg/text)
  (display (->text part:007E)))
