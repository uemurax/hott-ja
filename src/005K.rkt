#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt")

(define i "i")
(define C "C")
(define D "D")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define x3 (x . _ . "3"))
(define f "f")
(define f1 (f . _ . "1"))
(define f2 (f . _ . "2"))

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "かんしゅ"]{関手}
  ]
  @paragraph{
    @(math i)を階数、@(math (C D . elem-of* . (precat . $ . i)))を前圏とする。型@(math ((functor . $* . C D) . elem-of . (universe . $ . i)))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (functor:obj . elem-of . ((C . record-field . cat:obj) . fun-type . (D . record-field . cat:obj))))}
      @list-item{@(math (functor:map . elem-of . (d-fun-type (implicit (x1 x2 . elem-of* . (C . record-field . cat:obj))) (((C . record-field . cat:map) . $* . x1 x2) . fun-type . ((D . record-field . cat:map) . $* . (functor:obj . $ . x1) (functor:obj . $ . x2))))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x . elem-of . (C . record-field . cat:obj)) ((functor:map . $ . ((C . record-field . cat:id) . $ . x)) . id-type . ((D . record-field . cat:id) . $ . (functor:obj . $ . x))))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x1 x2 x3 . elem-of* . (C . record-field . cat:obj)) (d-fun-type (f1 . elem-of . ((C . record-field . cat:map) . $* . x1 x2)) (d-fun-type (f2 . elem-of . ((C . record-field . cat:map) . $* . x2 x3)) ((functor:map . $ . ((C . record-field . cat:comp) . $* . f2 f1)) . id-type . ((D . record-field . cat:comp) . $* . (functor:map . $ . f2) (functor:map . $ . f1))))))))}
    ]
    @(math (functor . $* . C D))の要素を@(math C)から@(math D)への@dfn{関手(functor)}と呼ぶ。
  }
]
