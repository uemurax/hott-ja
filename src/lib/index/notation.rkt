#lang typed/racket

(require morg/markup/index)

(provide notation-index
         print-notation-index)

(define-values (notation-index print-notation-index)
  (make-index))
