#lang typed/racket

(require (only-in morg/math make-level))

(module levels typed/racket
  (require morg/math)
  (provide (all-defined-out))
  (define-levels
   dot
   $
   unary
   comp
   *
   +
   binary
   logic-impl
   abs
   relation
   ->
   big-op
   subst-arrow
   def-eq
   weak-comma
   :
   comma
   semicolon
   punctuation))

(require 'levels)

(provide
 (except-out
  (all-from-out 'levels)
  big-op)
 (rename-out [big-op-lv big-op]))

(define big-op-lv (make-level big-op))
