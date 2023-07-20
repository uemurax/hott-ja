#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/level.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/logic.rkt"
         "lib/math/set.rkt")

(define i "i")
(define C "C")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define x3 (x . _ . "3"))
(define a "a")
(define f "f")
(define f1 (f . _ . "1"))
(define f2 (f . _ . "2"))

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ぜんそう"]{前層}
  ]
  @paragraph{
    @(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏とする。型@(math ((presheaf . $ . C) . elem-of . (universe . $ . (level:succ . $ . i))))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (presheaf:carrier . elem-of . ((C . record-field . cat:obj) . fun-type . (universe . $ . i))))}
      @list-item{@(math (presheaf:act . elem-of . (d-fun-type (implicit (x1 x2 . elem-of* . C)) ((presheaf:carrier . $ . x2) . fun-type . ((cat:map . $* . x1 x2) . fun-type . (presheaf:carrier . $ . x1))))))}
      @list-item{@(math (blank . elem-of . (forall (x . elem-of . C) (is-set . $ . (presheaf:carrier . $ . x)))))}
      @list-item{@(math (blank . elem-of . (forall (x . elem-of . C) (forall (a . elem-of . (presheaf:carrier . $ . x)) ((presheaf:act . $* . a cat:id) . id-type . a)))))}
      @list-item{@(math (blank . elem-of . (forall (x1 x2 x3 . elem-of* . C) (forall (f1 . elem-of . (cat:map . $* . x1 x2)) (forall (f2 . elem-of . (cat:map . $* . x2 x3)) (forall (a . elem-of . (presheaf:carrier . $ . x3)) ((presheaf:act . $* . a (f2 . cat:comp-bin . f1)) . id-type . (presheaf:act . $* . (presheaf:act . $* . a f2) f1))))))))}
    ]
    @(math (presheaf . $ . C))の要素を@(math C)上の@dfn{前層(presheaf)}と呼ぶ。
  }
]
