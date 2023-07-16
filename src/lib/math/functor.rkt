#lang at-exp typed/racket

(require "util.rkt"
         morg
         morg/math)

(provide functor
         is-fully-faithful
         is-ess-surj
         is-weak-cat-equiv
         iso-fiber
         iso-fiber:obj
         iso-fiber:iso
         functor-cat
         functor:obj
         functor:map)

(define functor/symb (const "Fun"))
(define functor (make-fun functor/symb))
(define functor:obj (const "obj"))
(define functor:map (const "map"))
(define is-fully-faithful/symb (const "IsFF"))
(define is-fully-faithful (make-fun is-fully-faithful/symb))
(define is-ess-surj/symb (const "IsEssSurj"))
(define is-ess-surj (make-fun is-ess-surj/symb))
(define is-weak-cat-equiv/symb (const "IsWCatEquiv"))
(define is-weak-cat-equiv (make-fun is-weak-cat-equiv/symb))
(define iso-fiber/symb ((const "Fiber") . ^ . (macro "cong")))
(define iso-fiber (make-fun iso-fiber/symb))
(define iso-fiber:obj (const "obj"))
(define iso-fiber:iso (const "iso"))

(define functor-cat/symb
  (functor/symb . ^ . @%{(@(const "Cat"))}))
(define functor-cat (make-fun functor-cat/symb))
