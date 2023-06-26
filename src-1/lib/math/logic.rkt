#lang typed/racket

(require morg/math)

(provide logic-false
         logic-or
         logic-neg)

(define logic-false (macro "bot"))

(define logic-or
  (monoid #:level 'binary logic-false (macro "lor")))

(define logic-neg
  (unary #:level 'unary (macro "neg")))
