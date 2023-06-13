#lang at-exp typed/racket

(require morg/markup
         morg/math)

(provide paren
         sub-sup _ ^
         def-eq
         seq
         elem-of
         elem-of/chain
         dots
         subst-bin
         subst-apply
         fun-apply
         universe
         id-type
         equiv
         d-fun-type
         refl
         abs
         fun-type
         $)

(define cfg
  (struct-copy user-config default-config
   [levels '(abs
             relation
             big-op
             subst-arrow
             def-eq
             elem-of
             punctuation)]))

(define $ (make-math cfg))

(define mathcal (macro-1 "mathcal"))
(define mathsf (macro-1 "mathsf"))
(define operator-name (macro-1 "operatorname"))

(define def-eq
  (binary #:level 'def-eq (macro "equiv")))

(define seq
  (monoid #:level 'punctuation "" ","))

(define elem-of
  (binary #:level 'elem-of ":"))

(define elem-of/chain
  (monoid #:level 'elem-of "" ":"))

(define dots (macro "dots"))

(define subst-bin
  (binary #:level 'subst-arrow @%{@macro["mapsto"]}))

(define (subst-apply [e : MathTeX+Like] [x : MathTeX+Like])
        : MathTeX+Like
  @paren[#:level #f]{@dec-degree[@group{@|e|}]@paren[#:left "[" #:right "]"]{@|x|}})

(define (fun-apply [f : MathTeX+Like] [x : MathTeX+Like]) : MathTeX+Like
  @paren[#:level #f]{@dec-degree[@group{@|f|}]@paren{@|x|}})

(define universe/symb
  @mathcal{U})

(define (universe . [xs : MathTeX+Like *])
  (fun-apply universe/symb (apply % xs)))

(define id-type
  (binary #:level 'relation "="))

(define equiv
  (binary #:level 'relation (macro "simeq")))

(define d-fun-type
  (big-op #:level 'big-op (macro "prod")))

(define const
  (compose operator-name mathsf))

(define refl/symb
  @const{refl})

(define (refl . [xs : MathTeX+Like *])
  (fun-apply refl/symb (apply % xs)))

(define (abs [x : MathTeX+Like] [b : MathTeX+Like])
  (paren #:level 'abs
         "λ" x "." (dec-degree b)))

(define fun-type
  (binary #:level 'relation #:assoc 'right
          (macro "to")))
