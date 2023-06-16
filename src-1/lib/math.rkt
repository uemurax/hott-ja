#lang at-exp typed/racket

(require morg/markup
         morg/math)

(provide paren
         sub-sup _ ^
         def-eq
         seq
         seq-of
         elem-of
         elem-of/chain
         dots
         vdots
         subst-bin
         subst-apply
         fun-apply
         fun-apply/implicit
         universe
         universe:el/symb
         universe:el
         universe:name
         universe:lift/symb
         universe:lift
         id-type
         id-ind
         is-equiv
         equiv
         equiv/symb
         equiv:fun
         equiv:is-equiv
         d-fun-type
         refl
         abs
         fun-type/symb
         fun-type
         level:zero
         level:succ
         unit-type
         unit-elem
         d-pair-type
         pair/symb
         pair
         proj/symb
         proj
         pair-type/symb
         pair-type
         record-type
         record-elem
         record-field
         implicit
         phantom
         center
         contraction
         is-contr
         retract
         fiber
         id-fun
         fun-comp
         ua
         swap
         curry
         uncurry
         +
         -
         $)

(define cfg
  (struct-copy user-config default-config
   [levels '(dot
             comp
             *
             +
             abs
             relation
             big-op
             subst-arrow
             def-eq
             elem-of
             punctuation)]))

(define $ (make-math cfg))

(define mathcal (macro-1 "mathcal"))
(define mathsf (macro-1 "mathsf"))
(define mathbf (macro-1 "mathbf"))
(define mathord (macro-1 "mathord"))
(define operator-name (macro-1 "operatorname"))
(define phantom (macro-1 "phantom"))

(define star (macro "star"))
(define times (macro "times"))
(define lbrace (macro "lbrace"))
(define rbrace (macro "rbrace"))

(define def-eq
  (binary #:level 'def-eq (macro "equiv")))

(define seq
  (monoid #:level 'punctuation "" ","))

(define elem-of
  (binary #:level 'elem-of ":"))

(define elem-of/chain
  (monoid #:level 'elem-of "" ":"))

(define dots (macro "dots"))
(define vdots (macro "vdots"))

(define-syntax-rule (seq-of [i from to] body ...)
  (let ()
    (define (f [i : MathTeX+Like]) : MathTeX+Like
      (% body ...))
    (seq (f from) dots (f to))))

(define subst-bin
  (binary #:level 'subst-arrow @%{@macro["mapsto"]}))

(define subst-apply
  (apply-with-parens #:left "[" #:right "]"))

(define implicit-left lbrace)
(define implicit-right rbrace)
(define implicit (paren/curried #:left implicit-left #:right implicit-right))

(define fun-apply
  (apply-with-parens))

(define fun-apply/implicit
  (apply-with-parens #:left implicit-left #:right implicit-right))

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

(define id-type/symb "=")
(define id-type
  (binary #:level 'relation id-type/symb))

(define is-equiv/symb (const "IsEquiv"))
(define is-equiv (make-fun is-equiv/symb))

(define equiv/symb (macro "simeq"))
(define equiv
  (binary #:level 'relation equiv/symb))
(define equiv:fun (const "fun"))
(define equiv:is-equiv (const "is-equiv"))

(define prod
  (big-op #:level 'big-op (macro "prod")))

(define sum
  (big-op #:level 'big-op (macro "sum")))

(define (d-fun-type [A : MathTeX+Like] . [B : MathTeX+Like *])
  (prod #:_ A (apply % B)))

(define refl/symb
  @const{refl})

(define refl (make-fun refl/symb))

(define ind/symb (const "ind"))

(define id-ind/symb
  (ind/symb . _ . id-type/symb))
(define id-ind (make-fun id-ind/symb))

(define (abs [x : MathTeX+Like] . [b : MathTeX+Like *])
  (paren #:level 'abs
         "λ" x "." (dec-degree (apply % b))))

(define fun-type/symb (macro "to"))
(define fun-type
  (binary #:level 'relation #:assoc 'right
          fun-type/symb))

(define level:zero "0")
(define level:succ/symb (const "succ"))
(define level:succ (make-fun level:succ/symb))

(define unit-type @mathbf{1})
(define unit-elem (mathord star))

(define (d-pair-type [A : MathTeX+Like] . [B : MathTeX+Like *])
  (sum #:_ A (apply % B)))

(define pair/symb (const "pair"))
(define pair (make-fun pair/symb))
(define (proj/symb [n : Natural])
  ((const "proj") . _ . (number->string n)))
(define (proj [n : Natural])
  (make-fun (proj/symb n)))

(define pair-type/symb times)
(define pair-type
  (monoid #:level '* unit-type pair-type/symb))

(define record-apply
  (apply-with-parens #:left lbrace #:right rbrace))
(define record-type/symb (const "Record"))
(define (record-type . [xs : MathTeX+Like *])
  (record-apply record-type/symb (apply seq xs)))
(define record-elem/symb (const "record"))
(define (record-elem . [xs : MathTeX+Like *])
  (record-apply record-elem/symb (apply seq xs)))
(define record-field
  (binary #:level 'dot "."))

(define + (monoid #:level '+ "0" "+"))

(define - (binary #:level '+ "-"))

(define center (const "center"))
(define contraction (const "contr"))
(define is-contr/symb (const "IsContr"))
(define is-contr (make-fun is-contr/symb))

(define retract/symb (const "Retract"))
(define retract (make-fun retract/symb))

(define fiber/symb (const "Fiber"))
(define fiber (make-fun fiber/symb))

(define id-fun/symb (const "id"))
(define id-fun (make-fun id-fun/symb))
(define fun-comp/symb (macro "circ"))
(define fun-comp (monoid #:level 'comp id-fun/symb fun-comp/symb))

(define ua/symb (const "ua"))
(define ua (make-fun ua/symb))

(define swap/symb (const "swap"))
(define swap (make-fun swap/symb))

(define curry/symb (const "curry"))
(define curry (make-fun curry/symb))

(define uncurry/symb (const "uncurry"))
(define uncurry (make-fun uncurry/symb))
