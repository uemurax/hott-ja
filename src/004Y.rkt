#lang morg

(require "lib/markup/example.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/ring.rkt"
         "lib/math/set.rkt")

(define i "i")
(define R "R")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define x3 (x . _ . "3"))
(define y "y")
(define y1 (y . _ . "1"))
(define y2 (y . _ . "2"))
(define X "X")
(define A "A")
(define B "B")
(define f "f")

@example[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "かん"]{環}
    @index[#:key "かんどうけい"]{環同型}
    @notation-index[#:key "Ring(i)"]{@(math (ring . $ . i))}
  ]
  @paragraph{
    @(math i)を階数とする。型@(math ((ring-str . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (ring:carrier . elem-of . (universe . $ . i)))}
      @list-item{@(math (ring:zero . elem-of . ring:carrier))}
      @list-item{@(math (ring:plus . elem-of . (ring:carrier . fun-type . (ring:carrier . fun-type . ring:carrier))))}
      @list-item{@(math (ring:minus . elem-of . (ring:carrier . fun-type . ring:carrier)))}
      @list-item{@(math (ring:one . elem-of . ring:carrier))}
      @list-item{@(math (ring:mul . elem-of . (ring:carrier . fun-type . (ring:carrier . fun-type . ring:carrier))))}
    ]
    要素@(math (R . elem-of . (ring-str . $ . i)))に対して、型@(math ((ring-axiom . $ . R) . elem-of . (universe . $ . i)))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (blank . elem-of . (is-set . $ . (R . record-field . ring:carrier))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x . elem-of . (R . record-field . ring:carrier)) (((R . record-field . ring:plus) . $* . (R . record-field . ring:zero) x) . id-type . x))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x1 x2 x3 . elem-of* . (R . record-field . ring:carrier)) (((R . record-field . ring:plus) . $* . ((R . record-field . ring:plus) . $* . x1 x2) x3) . id-type . ((R . record-field . ring:plus) . $* . x1 ((R . record-field . ring:plus) . $* . x2 x3))))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x1 x2 . elem-of* . (R . record-field . ring:carrier)) (((R . record-field . ring:plus) . $* . x1 x2) . id-type . ((R . record-field . ring:plus) . $* . x2 x1)))))}
      @list-item{@(math (blank . elem-of . (d-fun-type x (((R . record-field . ring:plus) . $* . x ((R . record-field . ring:minus) . $ . x)) . id-type . (R . record-field . ring:zero)))))}
      @list-item{@(math (blank . elem-of . (d-fun-type x (((R . record-field . ring:mul) . $* . (R . record-field . ring:one) x) . id-type . x))))}
      @list-item{@(math (blank . elem-of . (d-fun-type x (((R . record-field . ring:mul) . $* . x (R . record-field . ring:one)) . id-type . x))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x1 x2 x3 . elem-of* . (R . record-field . ring:carrier)) (((R . record-field . ring:mul) . $* . ((R . record-field . ring:mul) . $* . x1 x2) x3) . id-type . ((R . record-field . ring:mul) . $* . x1 ((R . record-field . ring:mul) . $* . x2 x3))))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x y1 y2 . elem-of* . (R . record-field . ring:carrier)) (((R . record-field . ring:mul) . $* . x ((R . record-field . ring:plus) . $* . y1 y2)) . id-type . ((R . record-field . ring:plus) . $* . ((R . record-field . ring:mul) . $* . x y1) ((R . record-field . ring:mul) . $* . x y2))))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x1 x2 y . elem-of* . (R . record-field . ring:carrier)) (((R . record-field . ring:mul) . $* . ((R . record-field . ring:plus) . $* . x1 x2) y) . id-type . ((R . record-field . ring:plus) . $* . ((R . record-field . ring:mul) . $* . x1 y) ((R . record-field . ring:mul) . $* . x2 y))))))}
    ]
    型@(math ((ring . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を@(math (d-pair-type (X . elem-of . (ring-str . $ . i)) (ring-axiom . $ . X)))と定義する。@(math (ring . $ . i))の要素を(階数@(math i)の)@dfn{環(ring)}と呼ぶ。環@(math (A B . elem-of* . (ring . $ . i)))に対して、同一視型@(math (A . id-type . B))は次のレコード型と同値であることが分かる。
    @unordered-list[
      @list-item{@(math (f . elem-of . ((((proj 1) . $ . A) . record-field . ring:carrier) . equiv . (((proj 1) . $ . B) . record-field . ring:carrier))))}
      @list-item{@(math (blank . elem-of . ((f . $ . (((proj 1) . $ . A) . record-field . ring:zero)) . id-type . (((proj 1) . $ . B) . record-field . ring:zero))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (seq x1 x2) ((f . $ . ((((proj 1) . $ . A) . record-field . ring:plus) . $* . x1 x2)) . id-type . ((((proj 1) . $ . B) . record-field . ring:plus) . $* . (f . $ . x1) (f . $ . x2))))))}
      @list-item{@(math (blank . elem-of . (d-fun-type x ((f . $ . ((((proj 1) . $ . A) . record-field . ring:minus) . $ . x)) . id-type . ((((proj 1) . $ . B) . record-field . ring:minus) . $ . (f . $ . x))))))}
      @list-item{@(math (blank . elem-of . ((f . $ . (((proj 1) . $ . A) . record-field . ring:one)) . id-type . (((proj 1) . $ . B) . record-field . ring:one))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (seq x1 x2) ((f . $ . ((((proj 1) . $ . A) . record-field . ring:mul) . $* . x1 x2)) . id-type . ((((proj 1) . $ . B) . record-field . ring:mul) . $* . (f . $ . x1) (f . $ . x2))))))}
    ]
    この型の要素はいわゆる@dfn{環同型(ring isomorphism)}である。
  }
]
