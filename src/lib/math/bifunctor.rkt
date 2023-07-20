#lang typed/racket

(require morg/math
         (prefix-in l: "paren-level.rkt")
         "core.rkt")

(provide bifunctor
         bifunctor:obj
         bifunctor:map-1
         bifunctor:map-2)

(define bifunctor/symb (const "BiFun"))

(define (bifunctor [C1 : MathTeX+Like] [C2 : MathTeX+Like] [D : MathTeX+Like])
  (bifunctor/symb
   . $ .
   ((C1 . (binary #:level l:comma ",") . C2)
    . (binary #:level l:semicolon ";") .
    D)))

(define bifunctor:obj (const "obj"))
(define bifunctor:map (const "map"))
(define bifunctor:map-1
  (bifunctor:map . _ . "1"))
(define bifunctor:map-2
  (bifunctor:map . _ . "2"))
