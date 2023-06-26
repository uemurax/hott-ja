#lang typed/racket

(require morg/math)

(provide logic-false
         logic-true
         logic-or
         logic-and
         logic-impl
         logic-equiv
         forall
         exists
         logic-neg)

(define logic-false (macro "bot"))
(define logic-true (macro "top"))

(define logic-or
  (monoid #:level 'binary logic-false (macro "lor")))

(define logic-and
  (monoid #:level 'binary logic-true (macro "land")))

(define logic-impl
  (binary #:level 'logic-impl #:assoc 'right
          (macro "Rightarrow")))

(define logic-equiv
  (binary #:level 'binary (macro "Leftrightarrow")))

(define logic-neg
  (unary #:level 'unary (macro "neg")))

(define (forall [x : MathTeX+Like] [P : MathTeX+Like])
  ((big-op #:level 'big-op (macro "forall"))
   #:_ x P))

(define (exists [x : MathTeX+Like] [P : MathTeX+Like])
  ((big-op #:level 'big-op (macro "exists"))
   #:_ x P))
