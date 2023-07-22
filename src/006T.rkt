#lang morg

(require "lib/markup/theorem.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt"
         morg/eq-reasoning)

(define i "i")
(define C "C")
(define x "x")
(define y "y")
(define A "A")
(define f "f")
(define h "h")
(define a "a")

@theorem[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (C . elem-of . (precat . $ . i)))を前圏、@(math (x . elem-of . C))を対象、@(math (A . elem-of . (presheaf-cat . $ . C)))を前層とする。関数
    @disp{
      @(math ((abs h (h . $ . (yoneda-gen . $ . x))) . elem-of . ((cat:map . $* . ((yoneda . $ . C) . $ . x) A) . fun-type . (A . $ . x))))
    }
    は同値である。
  }
  #:proof @proof[
    @paragraph{
      射@(math (h . elem-of . (cat:map . $* . ((yoneda . $ . C) . $ . x) A)))と対象@(math (y . elem-of . C))と要素@(math (f . elem-of . (((yoneda . $ . C) . $ . x) . $ . y)))に対して、同一視
      @disp{
        @eq-reasoning[
          @(math (h . $ . f))
          @(math id-type/symb) @%{前圏の公理}
          @(math (h . $ . ((yoneda-gen . $ . x) . presheaf:act-bin . f)))
          @(math id-type/symb) @%{前層の公理}
          @(math ((h . $ . (yoneda-gen . $ . x)) . presheaf:act-bin . f))
        ]
      }
      を得るので、@(math h)は@(math (yoneda-gen . $ . x))における値のみで決まる。つまり、任意の要素@(math (a . elem-of . (A . $ . x)))に対して、@(math (fiber . $* . (abs h (h . $ . (yoneda-gen . $ . x))) a))は命題であることが分かる。この型が要素を持つことを確認するには、@(math ((abs* y f (a . presheaf:act-bin . f)) . elem-of . (d-fun-type (y . elem-of . C) ((((yoneda . $ . C) . $ . x) . $ . y) . fun-type . (A . $ . y)))))が前層の射であることを確かめればよいが、それは前層の公理から容易である。
    }
  ]
]
