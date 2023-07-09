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
    (include-part "Church--1940-0000.rkt")
    (include-part "Hedberg--1998-0000.rkt")
    part:HoTT-Book
    (include-part "Hovey--1999-0000.rkt")
    (include-part "Kapulkin--Lumsdaine--2021-0000.rkt")
    (include-part "Lambek--Scott--1986-0000.rkt")
    part:Lumsdaine--2010-0000
    (include-part "Martin-Loef--1975-0000.rkt")
    (include-part "Pierce--2002-0000.rkt")
    (include-part "Quillen--1967-0000.rkt")
    (include-part "Russell--1908-0000.rkt")
    part:Streicher--1993-0000
    part:van-den-Berg--Garner--2011-0000
  ])

(module+ main
  (require morg/text)
  (display (->text part:007E)))
