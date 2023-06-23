#lang at-exp typed/racket

(require morg/math)

(provide empty-type)

(define mathbf (macro-1 "mathbf"))

(define empty-type @mathbf{1})
