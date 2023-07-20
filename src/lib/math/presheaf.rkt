#lang at-exp typed/racket

(require "core.rkt"
         (prefix-in l: "paren-level.rkt")
         (prefix-in tex: morg/math/tex)
         morg
         morg/math)

(provide yoneda
         yoneda-gen
         presheaf
         presheaf:carrier
         presheaf:act
         presheaf:act-bin
         presheaf-hom
         presheaf-cat
         id-presheaf-hom
         presheaf-hom-comp
         is-repr-psh:obj
         is-repr-psh:elem
         is-repr-psh)

(define yoneda (const "よ"))
(define yoneda-gen (const "gen"))
(define is-repr-psh (const "IsRepr"))
(define is-repr-psh:obj (const "obj"))
(define is-repr-psh:elem (const "elem"))
(define presheaf (const "Psh"))
(define presheaf:carrier (const "Carrier"))
(define presheaf:act (const "act"))
(define presheaf:act-bin/symb tex:cdot)
(define presheaf:act-bin
  (binary #:level l:comp presheaf:act-bin/symb
          #:assoc 'left))
(define presheaf-hom (const "Hom"))
(define presheaf-cat (presheaf . ^ . @%{(@(const "Cat"))}))
(define id-presheaf-hom (const "id"))
(define presheaf-hom-comp/symb tex:circ)
(define presheaf-hom-comp
  (monoid #:level l:comp id-presheaf-hom presheaf-hom-comp/symb))
