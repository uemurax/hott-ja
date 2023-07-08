#lang typed/racket

(require "util.rkt")

(provide yoneda
         yoneda-gen
         is-repr-psh)

(define yoneda/symb (const "よ"))
(define yoneda (make-fun yoneda/symb))
(define yoneda-gen/symb (const "gen"))
(define yoneda-gen (make-fun yoneda-gen/symb))
(define is-repr-psh/symb (const "IsRepr"))
(define is-repr-psh (make-fun is-repr-psh/symb))
