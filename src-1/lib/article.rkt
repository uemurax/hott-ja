#lang typed/racket

(require morg/markup)

(provide rule
         notation)

(define rule (article/curried "規則"))
(define notation (article/curried "記法"))
