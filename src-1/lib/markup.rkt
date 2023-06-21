#lang typed/racket

(require (except-in morg/markup proof))

(provide
 (all-from-out morg/markup)
 rule
 definition
 terminology
 axiom
 example
 exercise
 comparison
 proposition
 theorem
 lemma
 (rename-out [my-proof proof])
 notation)

(define rule (article/curried "規則"))
(define notation (article/curried "記法"))
(define definition (article/curried "定義"))
(define terminology (article/curried "用語"))
(define axiom (article/curried "公理"))
(define example (article/curried "例"))
(define exercise (article/curried "演習"))
(define comparison (article/curried "比較"))
(define proposition (article/curried "命題"))
(define theorem (article/curried "定理"))
(define lemma (article/curried "補題"))

(define my-proof (proof/curried #:header "証明"))