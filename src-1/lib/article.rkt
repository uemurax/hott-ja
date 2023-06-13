#lang typed/racket

(require morg/markup)

(provide rule
         definition
         notation)

(define rule (article/curried "規則"))
(define notation (article/curried "記法"))
(define definition (article/curried "定義"))
