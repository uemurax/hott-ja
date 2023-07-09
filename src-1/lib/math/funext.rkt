#lang typed/racket

(require "util.rkt")

(provide section-of-proj)

(define section-of-proj/symb (const "Sect"))
(define section-of-proj (make-fun section-of-proj/symb))
