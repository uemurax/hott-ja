#lang typed/racket

(require morg/math
         "util.rkt")

(provide cat:map
         cat:obj
         cat:iso
         set-cat)

(define cat:map (const "Map"))
(define cat:obj (const "Obj"))
(define cat:iso
  (binary #:level 'relation (macro "cong")))

(define cat/symb (const "Cat"))

(define set-cat/symb
  ((const "Set") . ^ . (paren cat/symb)))

(define set-cat (make-fun set-cat/symb))
