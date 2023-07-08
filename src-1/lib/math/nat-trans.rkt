#lang typed/racket

(require "util.rkt")

(provide nat-trans)

(define nat-trans/symb (const "NatTrans"))
(define nat-trans (make-fun nat-trans/symb))
