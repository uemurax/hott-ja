#lang typed/racket

(require morg/math)

(provide fun-apply
         fun-apply/implicit
         implicit)

(define implicit-left (macro "lbrace"))
(define implicit-right (macro "rbrace"))
(define implicit (delimiter #:left implicit-left #:right implicit-right))

(define fun-apply
  (apply-with-parens))

(define fun-apply/implicit
  (apply-with-parens #:left implicit-left #:right implicit-right))
