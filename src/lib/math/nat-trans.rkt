#lang typed/racket

(require "core.rkt"
         (prefix-in l: "paren-level.rkt")
         (prefix-in tex: morg/math/tex)
         morg/math)

(provide nat-trans
         id-nat-trans
         nat-trans-comp)

(define nat-trans (const "NatTrans"))
(define id-nat-trans (const "id"))
(define nat-trans-comp/symb tex:circ)
(define nat-trans-comp
  (monoid #:level l:comp id-nat-trans nat-trans-comp/symb))
