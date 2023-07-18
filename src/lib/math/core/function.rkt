#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "../paren-level.rkt"))

(provide fun-apply
         fun-apply/implicit
         implicit)

(define implicit-left tex:lbrace)
(define implicit-right tex:rbrace)
(define implicit (delimiter #:left implicit-left #:right implicit-right))

(define fun-apply
  (apply-with-parens #:level l:$))

(define fun-apply/implicit
  (apply-with-parens #:level l:$ #:left implicit-left #:right implicit-right))
