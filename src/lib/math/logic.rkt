#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "paren-level.rkt"))

(provide logic-false
         logic-true
         logic-or
         logic-and
         logic-impl
         logic-equiv
         forall
         exists
         logic-neg)

(define logic-false tex:bot)
(define logic-true tex:top)

(define logic-or
  (monoid #:level l:binary logic-false tex:lor))

(define logic-and
  (monoid #:level l:binary logic-true tex:land))

(define logic-impl
  (binary #:level l:logic-impl #:assoc 'right
          tex:Rightarrow))

(define logic-equiv
  (binary #:level l:binary tex:Leftrightarrow))

(define logic-neg
  (unary #:level l:unary tex:neg))

(define (forall [x : MathTeX+Like] [P : MathTeX+Like])
  ((big-op #:level l:big-op tex:forall)
   #:_ x P))

(define (exists [x : MathTeX+Like] [P : MathTeX+Like])
  ((big-op #:level l:big-op tex:exists)
   #:_ x P))
