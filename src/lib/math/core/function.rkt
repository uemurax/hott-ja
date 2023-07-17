#lang typed/racket

(require morg/math
         (prefix-in l: "../paren-level.rkt"))

(provide fun-apply
         fun-apply/implicit
         implicit)

(define implicit-left (macro "lbrace"))
(define implicit-right (macro "rbrace"))
(define implicit (delimiter #:left implicit-left #:right implicit-right))

(define fun-apply
  (apply-with-parens #:level l:$))

(define fun-apply/implicit
  (apply-with-parens #:level l:$ #:left implicit-left #:right implicit-right))
