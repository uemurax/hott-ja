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
         $)

(define cfg
  (struct-copy user-config default-config
   [levels '(relation
             big-op
             subst-arrow
             def-eq
             elem-of
             punctuation)]))

(define $ (make-math cfg))

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

(define universe-1
  @macro["mathcal" @argument{U}])

(define (universe . [xs : MathTeX+Like *])
  (fun-apply universe-1 (apply % xs)))

(define id-type
  (binary #:level 'relation "="))

(define equiv
  (binary #:level 'relation (macro "simeq")))

(define d-fun-type
  (big-op #:level 'big-op (macro "prod")))
