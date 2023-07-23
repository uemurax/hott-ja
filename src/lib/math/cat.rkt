#lang at-exp typed/racket

(require morg/math
         morg
         (prefix-in tex: morg/math/tex)
         (prefix-in l: "paren-level.rkt")
         "core.rkt")

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
  (binary #:level l:relation tex:cong))

(define cat (const "Cat"))

(define set-cat
  ((const "Set") . ^ . @%{(@|cat|)}))

(define precat (const "PreCat"))

(define cat:comp-bin
  (monoid #:level l:comp cat:id tex:circ))

(define cat:linv (const "LInv"))
(define cat:linv:inv (const "inv"))
(define cat:linv:id (const "id"))
(define cat:rinv (const "RInv"))
(define cat:rinv:inv (const "inv"))
(define cat:rinv:id (const "id"))

(define cat:is-iso (const "IsIso"))
(define cat:is-iso:linv (const "linv"))
(define cat:is-iso:rinv (const "rinv"))

(define is-cat (const "IsCat"))

(define is-precat-equiv (const "IsIso"))

(define opposite-cat (const "Op"))

(define cat:map/fun (cat:map . ^ . @%{(@(const "Fun"))}))
