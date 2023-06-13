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
         universe:el/symb
         universe:el
         universe:name
         universe:lift/symb
         universe:lift
         id-type
         equiv
         d-fun-type
         refl
         abs
         fun-type
         level:zero
         level:succ
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

(define subst-apply
  (apply-with-parens #:left "[" #:right "]"))

(define fun-apply
  (apply-with-parens))

(define ((make-fun [f : MathTeX+Like]) . [xs : MathTeX+Like *])
  (fun-apply f (apply % xs)))

(define name-of
  (paren/curried
   #:left (macro "lceil")
   #:right (macro "rceil")))

(define const
  (compose operator-name mathsf))

(define universe/symb
  @mathcal{U})

(define universe (make-fun universe/symb))

(define universe:el/symb @const{El})
(define universe:el (make-fun universe:el/symb))
(define universe:name (make-fun (name-of universe/symb)))
(define universe:lift/symb @const{Lift})
(define universe:lift (make-fun universe:lift/symb))

(define id-type
  (binary #:level 'relation "="))

(define equiv
  (binary #:level 'relation (macro "simeq")))

(define d-fun-type
  (big-op #:level 'big-op (macro "prod")))

(define refl/symb
  @const{refl})

(define refl (make-fun refl/symb))

(define (abs [x : MathTeX+Like] . [b : MathTeX+Like *])
  (paren #:level 'abs
         "λ" x "." (dec-degree (apply % b))))

(define fun-type
  (binary #:level 'relation #:assoc 'right
          (macro "to")))

(define level:zero "0")
(define level:succ/symb (const "succ"))
(define level:succ (make-fun level:succ/symb))
