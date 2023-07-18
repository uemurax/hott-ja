#lang typed/racket

(require "util.rkt"
         (prefix-in l: "paren-level.rkt")
         (prefix-in tex: morg/math/tex)
         morg/math)

(provide nat-trans
         id-nat-trans
         nat-trans-comp)

(define nat-trans/symb (const "NatTrans"))
(define nat-trans (make-fun nat-trans/symb))
(define id-nat-trans/symb (const "id"))
(define id-nat-trans (make-fun id-nat-trans/symb))
(define nat-trans-comp/symb tex:circ)
(define nat-trans-comp
  (monoid #:level l:comp id-nat-trans/symb nat-trans-comp/symb))
