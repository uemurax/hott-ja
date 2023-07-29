#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/fiber-coproduct.rkt")

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define y "y")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "codiag"]{@(math codiagonal)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。関数@(math ((codiagonal . $ . f) . elem-of . ((B . (fiber-coproduct-type f f) . B) . fun-type . B)))を
    @unordered-list[
      @list-item{@(math ((codiagonal . $* . f ((fiber-coproduct-type:in 1) . $ . y)) . def-eq . y))}
      @list-item{@(math ((codiagonal . $* . f ((fiber-coproduct-type:in 2) . $ . y)) . def-eq . y))}
      @list-item{@(math ((codiagonal . $* . f (fiber-coproduct-type:glue . $ . x)) . id-type . refl))}
    ]
    で定義する。
  }
]
