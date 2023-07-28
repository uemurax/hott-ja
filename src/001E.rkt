#lang morg

(require "lib/math.rkt"
         "lib/math/id.rkt"
         "lib/index/notation.rkt"
         "lib/markup/definition.rkt")

(define i "i")
(define A "A")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define x3 (x . _ . "3"))
(define z "z")
(define w "w")
(define p "p")
(define q "q")

@definition[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "p^-1"]{@(math (id-inv p))}
    @notation-index[#:key "qop"]{@(math (q . id-comp . p)) (同一視)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とする。
    @unordered-list[
      @list-item{関数@(math (id-sym . elem-of . (d-fun-type (implicit (x1 x2 . elem-of* . A)) ((x1 . id-type . x2) . fun-type . (x2 . id-type . x1)))))を@(math (abs* x1 x2 z (id-extension . $* . z refl)))と定義する。@(math (id-sym . $ . p))を@(math (id-inv p))とも書く。}
      @list-item{関数@(math (id-trans . elem-of . (d-fun-type (implicit (x1 x2 x3 . elem-of* . A)) ((x1 . id-type . x2) . fun-type . ((x2 . id-type . x3) . fun-type . (x1 . id-type . x3))))))を@(math (abs* x1 x2 x3 z w (id-extension . $* . (id-inv z) w)))と定義する。@(math (id-trans . $* . p q))を@(math (q . id-comp . p))とも書く。}
    ]
  }
]
