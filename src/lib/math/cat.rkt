#lang at-exp typed/racket

(require morg/math
         morg
         (prefix-in l: "paren-level.rkt")
         "util.rkt")

(provide cat:map
         cat:obj
         cat:id
         cat:comp
         cat:iso
         cat:comp-bin
         cat:linv
         cat:linv:inv
         cat:linv:id
         cat:rinv
         cat:rinv:inv
         cat:rinv:id
         cat:is-iso
         cat:is-iso:linv
         cat:is-iso:rinv
         is-cat
         cat
         precat
         is-precat-equiv
         opposite-cat
         cat:map/fun
         set-cat)

(define cat:map (const "Map"))
(define cat:obj (const "Obj"))
(define cat:id (const "id"))
(define cat:comp (const "comp"))
(define cat:iso
  (binary #:level l:relation (macro "cong")))

(define cat/symb (const "Cat"))
(define cat (make-fun cat/symb))

(define set-cat/symb
  ((const "Set") . ^ . @%{(@|cat/symb|)}))

(define set-cat (make-fun set-cat/symb))

(define precat/symb (const "PreCat"))
(define precat (make-fun precat/symb))

(define cat:comp-bin
  (monoid #:level l:comp cat:id (macro "circ")))

(define cat:linv/symb (const "LInv"))
(define cat:linv (make-fun cat:linv/symb))
(define cat:linv:inv (const "inv"))
(define cat:linv:id (const "id"))
(define cat:rinv/symb (const "RInv"))
(define cat:rinv (make-fun cat:rinv/symb))
(define cat:rinv:inv (const "inv"))
(define cat:rinv:id (const "id"))

(define cat:is-iso/symb (const "IsIso"))
(define cat:is-iso (make-fun cat:is-iso/symb))
(define cat:is-iso:linv (const "linv"))
(define cat:is-iso:rinv (const "rinv"))

(define is-cat/symb (const "IsCat"))
(define is-cat (make-fun is-cat/symb))

(define is-precat-equiv/symb (const "IsIso"))
(define is-precat-equiv (make-fun is-precat-equiv/symb))

(define opposite-cat/symb (const "Op"))
(define opposite-cat (make-fun opposite-cat/symb))

(define cat:map/fun/symb
  (cat:map . ^ . @%{(@(const "Fun"))}))
(define cat:map/fun (make-fun cat:map/fun/symb))
