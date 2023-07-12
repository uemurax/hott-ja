#lang typed/racket

(require "util.rkt")

(provide is-connected
         is-connected-map)

(define is-connected/symb (const "IsConnected"))
(define is-connected (make-fun is-connected/symb))
(define is-connected-map/symb (const "IsConnMap"))
(define is-connected-map (make-fun is-connected-map/symb))
