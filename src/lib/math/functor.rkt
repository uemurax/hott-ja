#lang at-exp typed/racket

(require "core.rkt"
         morg
         (prefix-in tex: morg/math/tex)
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

(define functor (const "Fun"))
(define functor:obj (const "obj"))
(define functor:map (const "map"))
(define is-fully-faithful (const "IsFF"))
(define is-ess-surj (const "IsEssSurj"))
(define is-weak-cat-equiv (const "IsWCatEquiv"))
(define iso-fiber (fiber . ^ . tex:cong))
(define iso-fiber:obj (const "obj"))
(define iso-fiber:iso (const "iso"))

(define functor-cat (functor . ^ . @%{(@(const "Cat"))}))
