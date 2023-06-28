#lang typed/racket

(require morg/math
         "util.rkt")

(provide cat:map
         cat:obj
         cat:id
         cat:comp
         cat:iso
         precat
         set-cat)

(define cat:map (const "Map"))
(define cat:obj (const "Obj"))
(define cat:id (const "id"))
(define cat:comp (const "comp"))
(define cat:iso
  (binary #:level 'relation (macro "cong")))

(define cat/symb (const "Cat"))

(define set-cat/symb
  ((const "Set") . ^ . (paren cat/symb)))

(define set-cat (make-fun set-cat/symb))

(define precat/symb (const "PreCat"))
(define precat (make-fun precat/symb))
