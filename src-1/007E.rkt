#lang at-exp typed/racket

(require "lib/markup.rkt")

(require "HoTT-Book.rkt"
         "van-den-Berg--Garner--2011-0000.rkt"
         "Streicher--1993-0000.rkt"
         "Lumsdaine--2010-0000.rkt")

(provide part:007E)

(define part:007E
  @section[
    #:id "007E"
    #:title @%{参考文献}
    (include-part "Hedberg--1998-0000.rkt")
    part:HoTT-Book
    part:Lumsdaine--2010-0000
    part:Streicher--1993-0000
    part:van-den-Berg--Garner--2011-0000
  ])

(module+ main
  (require morg/text)
  (display (->text part:007E)))
