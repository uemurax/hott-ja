#lang at-exp typed/racket

(require "util.rkt"
         morg/markup
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

(define yoneda/symb (const "よ"))
(define yoneda (make-fun yoneda/symb))
(define yoneda-gen/symb (const "gen"))
(define yoneda-gen (make-fun yoneda-gen/symb))
(define is-repr-psh/symb (const "IsRepr"))
(define is-repr-psh (make-fun is-repr-psh/symb))
(define is-repr-psh:obj (const "obj"))
(define is-repr-psh:elem (const "elem"))
(define presheaf/symb (const "Psh"))
(define presheaf (make-fun presheaf/symb))
(define presheaf:carrier (const "Carrier"))
(define presheaf:act (const "act"))
(define presheaf:act-bin/symb (macro "cdot"))
(define presheaf:act-bin
  (binary #:level 'comp presheaf:act-bin/symb
          #:assoc 'left))
(define presheaf-hom/symb (const "Hom"))
(define presheaf-hom (make-fun presheaf-hom/symb))
(define presheaf-cat/symb
  (presheaf/symb . ^ . @%{(@(const "Cat"))}))
(define presheaf-cat (make-fun presheaf-cat/symb))
(define id-presheaf-hom/symb (const "id"))
(define id-presheaf-hom (make-fun id-presheaf-hom/symb))
(define presheaf-hom-comp/symb (macro "circ"))
(define presheaf-hom-comp
  (monoid #:level 'comp id-presheaf-hom/symb presheaf-hom-comp/symb))
