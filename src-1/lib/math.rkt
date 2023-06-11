#lang at-exp typed/racket

(require morg/markup
         morg/math)

(provide paren
         sub-sup _ ^
         def-eq
         seq
         elem-of
         dots
         subst-bin
         subst-apply
         $)

(define cfg
  (struct-copy user-config default-config
   [levels '(subst-arrow
             def-eq
             elem-of
             punctuation)]))

(define $ (make-math cfg))

(define def-eq
  (binary #:level 'def-eq @%{@macro["equiv"]}))

(define seq
  (monoid #:level 'punctuation "" @%{,}))

(define elem-of
  (binary #:level 'elem-of @%{:}))

(define dots (macro "dots"))

(define subst-bin
  (binary #:level 'subst-arrow @%{@macro["mapsto"]}))

(define (subst-apply [e : MathTeX+Like] [x : MathTeX+Like])
        : MathTeX+Like
  @paren[#:level #f]{@dec-degree[@group{@|e|}]@paren[#:left "[" #:right "]"]{@|x|}})
