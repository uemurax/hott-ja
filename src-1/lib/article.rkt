#lang typed/racket

(require morg/markup)

(provide rule
         definition
         terminology
         axiom
         notation)

(define rule (article/curried "規則"))
(define notation (article/curried "記法"))
(define definition (article/curried "定義"))
(define terminology (article/curried "用語"))
(define axiom (article/curried "公理"))
