#lang typed/racket

(require "util.rkt")

(provide functor
         functor:obj
         functor:map)

(define functor/symb (const "Fun"))
(define functor (make-fun functor/symb))
(define functor:obj (const "obj"))
(define functor:map (const "map"))
