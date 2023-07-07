#lang typed/racket

(require "util.rkt")

(provide functor
         is-fully-faithful
         is-ess-surj
         is-weak-cat-equiv
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
