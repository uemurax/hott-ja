#lang typed/racket

(require "util.rkt"
         morg/math)

(provide yoneda
         yoneda-gen
         presheaf
         presheaf:carrier
         presheaf:act
         presheaf:act-bin
         is-repr-psh)

(define yoneda/symb (const "よ"))
(define yoneda (make-fun yoneda/symb))
(define yoneda-gen/symb (const "gen"))
(define yoneda-gen (make-fun yoneda-gen/symb))
(define is-repr-psh/symb (const "IsRepr"))
(define is-repr-psh (make-fun is-repr-psh/symb))
(define presheaf/symb (const "Psh"))
(define presheaf (make-fun presheaf/symb))
(define presheaf:carrier (const "Carrier"))
(define presheaf:act (const "act"))
(define presheaf:act-bin/symb (macro "cdot"))
(define presheaf:act-bin
  (binary #:level 'comp presheaf:act-bin/symb
          #:assoc 'left))
