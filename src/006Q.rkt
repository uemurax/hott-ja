#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/bifunctor.rkt"
         "lib/math/cat.rkt"
         "lib/math/logic.rkt")

(define i "i")
(define C "C")
(define C1 (C . _ . "1"))
(define C2 (C . _ . "2"))
(define D "D")
(define x "x")
(define x11 (x . _ . "11"))
(define x12 (x . _ . "12"))
(define x13 (x . _ . "13"))
(define x21 (x . _ . "21"))
(define x22 (x . _ . "22"))
(define x23 (x . _ . "23"))
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define f "f")
(define f1 (f . _ . "1"))
(define f2 (f . _ . "2"))

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "そうかんしゅ"]{双関手}
    @notation-index[#:key "BiFun(C1,C2;D)"]{@(math (bifunctor C1 C2 D))}
  ]
  @paragraph{
    @(math i)を階数、@(math (C1 C2 D . elem-of* . (precat . $ . i)))を前圏とする。型@(math ((bifunctor C1 C2 D) . elem-of . (universe . $ . i)))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (bifunctor:obj . elem-of . ((C1 . record-field . cat:obj) . fun-type . ((C2 . record-field . cat:obj) . fun-type . (D . record-field . cat:obj)))))}
      @list-item{@(math (bifunctor:map-1 . elem-of . (d-fun-type (implicit (x11 x12 . elem-of* . C1)) ((cat:map . $* . x11 x12) . fun-type . (d-fun-type (x2 . elem-of . C2) (cat:map . $* . (bifunctor:obj . $* . x11 x2) (bifunctor:obj . $* . x12 x2)))))))}
      @list-item{@(math (bifunctor:map-2 . elem-of . (d-fun-type (x1 . elem-of . C1) (d-fun-type (implicit (x21 x22 . elem-of* . C2)) ((cat:map . $* . x21 x22) . fun-type . (cat:map . $* . (bifunctor:obj . $* . x1 x21) (bifunctor:obj . $* . x1 x22)))))))}
      @list-item{@(math (blank . elem-of . (forall (x1 . elem-of . C1) (forall (x2 . elem-of . C2) ((bifunctor:map-1 . $* . (cat:id . $i . x1) x2) . id-type . (cat:id . $i . (bifunctor:obj . $* . x1 x2)))))))}
      @list-item{@(math (blank . elem-of . (forall (x11 x12 x13 . elem-of* . C1) (forall (x2 . elem-of . C2) (forall (f1 . elem-of . (cat:map . $* . x11 x12)) (forall (f2 . elem-of . (cat:map . $* . x12 x13)) ((bifunctor:map-1 . $* . (f2 . cat:comp-bin . f1) x2) . id-type . ((bifunctor:map-1 . $* . f2 x2) . cat:comp-bin . (bifunctor:map-1 . $* . f1 x2)))))))))}
      @list-item{@(math (blank . elem-of . (forall (x1 . elem-of . C1) (forall (x2 . elem-of . C2) ((bifunctor:map-2 . $* . x1 (cat:id . $i . x2)) . id-type . (cat:id . $i . (bifunctor:obj . $* . x1 x2)))))))}
      @list-item{@(math (blank . elem-of . (forall (x1 . elem-of . C1) (forall (x21 x22 x23 . elem-of* . C2) (forall (f1 . elem-of . (cat:map . $* . x21 x22)) (forall (f2 . elem-of . (cat:map . $* . x22 x23)) ((bifunctor:map-2 . $* . x1 (f2 . cat:comp-bin . f1)) . id-type . ((bifunctor:map-2 . $* . x1 f2) . cat:comp-bin . (bifunctor:map-2 . $* . x1 f1)))))))))}
      @list-item{@(math (blank . elem-of . (forall (x11 x12 . elem-of* . C1) (forall (x21 x22 . elem-of* . C2) (forall (f1 . elem-of . (cat:map . $* . x11 x12)) (forall (f2 . elem-of . (cat:map . $* . x21 x22)) (((bifunctor:map-1 . $* . f1 x22) . cat:comp-bin . (bifunctor:map-2 . $* . x11 f2)) . id-type . ((bifunctor:map-2 . $* . x12 f2) . cat:comp-bin . (bifunctor:map-1 . $* . f1 x21)))))))))}
    ]
    @(math (bifunctor C1 C2 D))の要素を@(math (seq C1 C2))から@(math D)への@dfn{双関手(bifunctor)}と呼ぶ。
  }
]
