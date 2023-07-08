#lang typed/racket

(require "util.rkt")

(provide is-connected)

(define is-connected/symb (const "IsConnected"))
(define is-connected (make-fun is-connected/symb))
