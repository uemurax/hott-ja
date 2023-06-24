#lang at-exp typed/racket

(require morg/markup
         morg/math
         "math/core/function.rkt"
         "math/core/universe.rkt"
         "math/util.rkt")

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
         phantom
         center
         contraction
         is-contr
         retract
         retract:retraction
         retract:section
         retract:id
         retract-rel
         retract-rel/symb
         bi-retract-rel
         bi-retract-rel/symb
         fiber
         fiber/symb
         fiber:elem
         fiber:id
         id-fun
         fun-comp
         transport
         id-inv
         id-comp
         fun-apply-id
         log-equiv/symb
         log-equiv
         log-equiv-to
         log-equiv-from
         homotopy
         blank
         +
         -
         $
         (all-from-out "math/core/function.rkt"
                       "math/core/universe.rkt"))

(define cfg
  (struct-copy config default-config
   [levels '(dot
             unary
             comp
             *
             +
             abs
             relation
             fun-type
             big-op
             subst-arrow
             def-eq
             elem-of
             punctuation)]))

(define $ (make-math cfg))

(define mathbf (macro-1 "mathbf"))
(define mathord (macro-1 "mathord"))
(define mathrel (macro-1 "mathrel"))
(define phantom (macro-1 "phantom"))

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
  (binary #:level 'fun-type #:assoc 'right
          fun-type/symb))

(define unit-type @mathbf{1})
(define unit-elem (mathord (macro "star")))

(define (d-pair-type [A : MathTeX+Like] . [B : MathTeX+Like *])
  (sum #:_ A (apply % B)))

(define pair/symb (const "pair"))
(define pair (make-fun pair/symb))
(define (proj/symb [n : Natural])
  ((const "proj") . _ . (number->string n)))
(define (proj [n : Natural])
  (make-fun (proj/symb n)))

(define pair-type/symb (macro "times"))
(define pair-type
  (monoid #:level '* unit-type pair-type/symb))

(define record-apply
  (apply-with-parens #:left (macro "lbrace") #:right (macro "rbrace")))
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
(define retract:retraction (const "retraction"))
(define retract:section (const "section"))
(define retract:id (const "r-s"))
(define retract-rel/symb (macro "triangleleft"))
(define retract-rel
  (binary #:level 'relation retract-rel/symb))
(define bi-retract-rel/symb
  (mathrel (macro "triangleleft") (macro "triangleright")))
(define bi-retract-rel
  (binary #:level 'relation
          bi-retract-rel/symb))

(define fiber/symb (const "Fiber"))
(define fiber (make-fun fiber/symb))
(define fiber:elem (const "elem"))
(define fiber:id (const "id"))

(define id-fun/symb (const "id"))
(define id-fun (make-fun id-fun/symb))
(define fun-comp/symb (macro "circ"))
(define fun-comp (monoid #:level 'comp id-fun/symb fun-comp/symb))

(define transport/symb (const "transport"))
(define transport (make-fun transport/symb))

(define id-inv (sup-op #:level 'unary "-1"))
(define id-comp (monoid #:level 'comp refl/symb fun-comp/symb))

(define fun-apply-id/symb (const "ap"))
(define fun-apply-id (make-fun fun-apply-id/symb))

(define log-equiv/symb (macro "leftrightarrow"))
(define log-equiv (binary #:level 'relation log-equiv/symb))
(define log-equiv-to (const "to"))
(define log-equiv-from (const "from"))

(define homotopy/symb (macro "sim"))
(define homotopy (binary #:level 'relation homotopy/symb))

(define blank "_")
