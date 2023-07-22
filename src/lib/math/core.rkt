#lang at-exp typed/racket

(require morg/math
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "paren-level.rkt"))

(provide const
         def-eq
         universe
         (rename-out [fun-apply $]
                     [fun-apply* $*]
                     [fun-apply/implicit $i]
                     [fun-apply*/implicit $i*])
         implicit
         seq
         elem-of
         elem-of*
         elem-of/chain
         (rename-out [tex:dots dots]
                     [tex:vdots vdots])
         subst-bin
         subst-apply
         subst-apply...
         ind/symb
         id-type
         id-type/symb
         id-ind
         is-equiv
         equiv
         equiv/symb
         equiv:fun
         equiv:is-equiv
         d-fun-type
         refl
         abs
         abs*
         fun-type/symb
         fun-type
         unit-type
         unit-elem
         d-pair-type
         pair
         proj
         pair-type/symb
         pair-type
         record-type
         record-type...
         record-elem
         record-elem...
         record-field
         (rename-out [tex:phantom phantom])
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
         -)

(define seq
  (monoid #:level l:punctuation "" ","))

(define weak-seq
  (monoid #:level l:weak-comma "" ","))

(define const
  (tex:mathord . compose . (tex:textnormal . compose . tex:textsf)))

(define universe @tex:mathcal{U})

(define implicit-left tex:lbrace)
(define implicit-right tex:rbrace)
(define implicit (delimiter #:left implicit-left #:right implicit-right))

(define fun-apply
  (apply-with-parens #:level l:$))

(define fun-apply/implicit
  (apply-with-parens #:level l:$ #:left implicit-left #:right implicit-right))

(define (fun-apply* [f : MathTeX+Like] . [xs : MathTeX+Like *])
  (f . fun-apply . (apply seq xs)))

(define (fun-apply*/implicit [f : MathTeX+Like] . [xs : MathTeX+Like *])
  (f . fun-apply/implicit . (apply seq xs)))

(define def-eq
  (binary #:level l:def-eq tex:equiv))

(define elem-of
  (binary #:level l:: ":"))

(define elem-of/chain
  (monoid #:level l:: "" ":"))

(: elem-of*:aux : ((Listof MathTeX+Like) MathTeX+Like (Listof MathTeX+Like) . -> . MathTeX+Like))

(define (elem-of*:aux l a r)
  (match r
   [(list) ((apply weak-seq (reverse l)) . elem-of . a)]
   [(list* b r)
    (elem-of*:aux (list* a l) b r)]))

(define (elem-of* [a : MathTeX+Like] [b : MathTeX+Like] . [rst : MathTeX+Like *])
  (elem-of*:aux (list a) b rst))

(define subst-bin
  (binary #:level l:subst-arrow tex:mapsto))

(define (subst-1 [x : MathTeX+Like] [a : MathTeX+Like])
  (list x a))

(define (subst-entry [x : (List MathTeX+Like MathTeX+Like)])
  (match x
   [(list v t)
    (v . subst-bin . t)]))

(define subst-apply-0
  (apply-with-parens #:level l:$ #:left "[" #:right "]"))

(define (subst-apply [a : MathTeX+Like] . [s : (List MathTeX+Like MathTeX+Like) *])
  (subst-apply-0
   a
   (apply seq (map subst-entry s))))

(define (subst-apply... [a : MathTeX+Like]
                        [beg : (List MathTeX+Like MathTeX+Like)]
                        [end : (List MathTeX+Like MathTeX+Like)])
  (subst-apply-0
   a
   (seq (subst-entry beg) tex:dots (subst-entry end))))

(define id-type/symb "=")
(define id-type
  (binary #:level l:relation id-type/symb))

(define is-equiv (const "IsEquiv"))

(define equiv/symb tex:simeq)
(define equiv
  (binary #:level l:relation equiv/symb))
(define equiv:fun (const "fun"))
(define equiv:is-equiv (const "is-equiv"))

(define prod
  (big-op #:level l:big-op tex:prod))

(define sum
  (big-op #:level l:big-op tex:sum))

(define (d-fun-type [A : MathTeX+Like] [B : MathTeX+Like])
  (prod #:_ A B))

(define refl @const{refl})

(define ind/symb (const "ind"))

(define id-ind (ind/symb . _ . id-type/symb))

(define abs-paren
  (paren/curried #:level l:abs))

(define (abs [x : MathTeX+Like] [b : MathTeX+Like])
  (abs-paren tex:lambda x "." (dec-degree b)))

(: abs*:aux : ((Listof MathTeX+Like) MathTeX+Like (Listof MathTeX+Like) . -> . MathTeX+Like))

(define (abs*:aux l x r)
  (match r
   [(list)
    (abs (apply seq (reverse l)) x)]
   [(list* y r)
    (abs*:aux (list* x l) y r)]))

(define (abs* [x : MathTeX+Like] [y : MathTeX+Like] . [r : MathTeX+Like *])
  (abs*:aux (list x) y r))

(define fun-type/symb tex:to)
(define fun-type
  (binary #:level l:-> #:assoc 'right
          fun-type/symb))

(define unit-type @tex:mathbf{1})
(define unit-elem @tex:mathord{@tex:star})

(define (d-pair-type [A : MathTeX+Like] [B : MathTeX+Like])
  (sum #:_ A B))

(define pair (const "pair"))
(define (proj [n : Natural])
  ((const "proj") . _ . (number->string n)))

(define pair-type/symb tex:times)
(define pair-type
  (monoid #:level l:* unit-type pair-type/symb))

(define record-left
  (tex:mathopen tex:\{ tex:negmedspace "|"))

(define record-right
  (tex:mathclose "|" tex:negmedspace tex:\}))

(define record-apply
  (apply-with-parens #:level l:$ #:left record-left #:right record-right))

(define (record-1 [x : MathTeX+Like] [a : MathTeX+Like])
  (list x a))

(define record-type/symb (const "Record"))

(define (record-type-entry [x : (List MathTeX+Like MathTeX+Like)])
  (match x
   [(list l t) (l . elem-of . t)]))

(define (record-type . [xs : (List MathTeX+Like MathTeX+Like) *])
  (record-apply record-type/symb (apply seq (map record-type-entry xs))))

(define (record-type... [beg : (List MathTeX+Like MathTeX+Like)]
                        [end : (List MathTeX+Like MathTeX+Like)])
  (record-apply record-type/symb
                (seq (record-type-entry beg)
                     tex:dots
                     (record-type-entry end))))

(define record-elem/symb (const "record"))

(define (record-elem-entry [x : (List MathTeX+Like MathTeX+Like)])
  (match x
   [(list l v) (l . def-eq . v)]))

(define (record-elem . [xs : (List MathTeX+Like MathTeX+Like) *])
  (record-apply record-elem/symb (apply seq (map record-elem-entry xs))))

(define (record-elem... [beg : (List MathTeX+Like MathTeX+Like)]
                        [end : (List MathTeX+Like MathTeX+Like)])
  (record-apply record-elem/symb
                (seq (record-elem-entry beg)
                     tex:dots
                     (record-elem-entry end))))

(define record-field
  (binary #:level l:dot "."))

(define + (monoid #:level l:+ "0" "+"))

(define - (binary #:level l:+ "-"))

(define center (const "center"))
(define contraction (const "contr"))
(define is-contr (const "IsContr"))

(define retract (const "Retract"))
(define retract:retraction (const "retraction"))
(define retract:section (const "section"))
(define retract:id (const "r-s"))
(define retract-rel/symb tex:triangleleft)
(define retract-rel
  (binary #:level l:relation retract-rel/symb))
(define bi-retract-rel/symb
  (tex:mathrel tex:triangleleft tex:triangleright))
(define bi-retract-rel
  (binary #:level l:relation
          bi-retract-rel/symb))

(define fiber (const "Fiber"))
(define fiber:elem (const "elem"))
(define fiber:id (const "id"))

(define id-fun (const "id"))
(define fun-comp/symb tex:circ)
(define fun-comp (monoid #:level l:comp id-fun fun-comp/symb))

(define transport (const "transport"))

(define id-inv (sup-op #:level l:unary "-1"))
(define id-comp (monoid #:level l:comp refl fun-comp/symb))

(define fun-apply-id (const "ap"))

(define log-equiv/symb tex:leftrightarrow)
(define log-equiv (binary #:level l:relation log-equiv/symb))
(define log-equiv-to (const "to"))
(define log-equiv-from (const "from"))

(define homotopy/symb tex:sim)
(define homotopy (binary #:level l:relation homotopy/symb))

(define blank "_")
