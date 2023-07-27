#lang typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "paren-level.rkt")
         "core.rkt"
         "coproduct.rkt")

(provide fiber-coproduct-type
         (rename-out
          [coproduct-type:in fiber-coproduct-type:in])
         fiber-coproduct-type:glue
         fiber-coproduct-type:ind
         fiber-coproduct-type:ind-glue)

(define (fiber-coproduct-type/symb [f : MathTeX+Like] [g : MathTeX+Like])
  (tex:mathbin
   ((group) . _ . f)
   ((tex:smash coproduct-type/symb) . _ . g)))

(define (fiber-coproduct-type [f : MathTeX+Like] [g : MathTeX+Like])
  (binary #:level l:+
          (fiber-coproduct-type/symb f g)))

(define fiber-coproduct-type:glue (const "glue"))

(define fiber-coproduct-type:ind
  (ind/symb . _ . (fiber-coproduct-type/symb "." ".")))

(define fiber-coproduct-type:ind-glue
  (tex:mathord
   fiber-coproduct-type:ind
   (const "-")
   fiber-coproduct-type:glue))
