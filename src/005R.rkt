#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         morg/eq-reasoning)

(define i "i")
(define A "A")
(define B "B")
(define f "f")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define y "y")
(define z "z")
(define z1 (z . _ . "1"))
(define z2 (z . _ . "2"))
(define p "p")
(define p1 (p . _ . "1"))
(define n "n")

@proposition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))を関数とする。
    @ordered-list[
      @list-item[#:id "0000"]{型@(math (is-trunc-map . $* . trunc-level:-2 f))と@(math (is-equiv . $ . f))は論理的に同値である。}
      @list-item[#:id "0001"]{要素@(math (n . elem-of . trunc-level))に対して、次の型は論理的に同値である。
        @unordered-list[
          @list-item{@(math (is-trunc-map . $* . (trunc-level:succ . $ . n) f))}
          @list-item{@(math (d-fun-type (x1 x2 . elem-of* . A) (is-trunc-map . $* . n ((fun-apply-id . $* . f) . $i* . x1 x2))))}
        ]
      }
    ]
  }
  #:proof @proof[
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0000"]は定義から自明である。
    }
    @paragraph{
      @anchor-ref[#:node (current-id) #:anchor "0001"]は次のように分かる。
      @disp{
        @eq-reasoning[
          @(math (is-trunc-map . $* . (trunc-level:succ . $ . n) f))
          @(math log-equiv/symb) @%{定義}
          @(math (d-fun-type (y . elem-of . B) (d-fun-type (z1 z2 . elem-of* . (fiber . $* . f y)) (is-trunc . $* . n (z1 . id-type . z2)))))
          @(math log-equiv/symb) @%{並び替え}
          @(math (d-fun-type (x1 . elem-of . A) (d-fun-type (y . elem-of . B) (d-fun-type (p1 . elem-of . ((f . $ . x1) . id-type . y)) (d-fun-type (z2 . elem-of . (fiber . $* . f y)) (is-trunc . $* . n ((record-elem (list fiber:elem x1) (list fiber:id p1)) . id-type . z2)))))))
          @(math log-equiv/symb) @%{@(math p1)についての帰納法}
          @(math (d-fun-type (x1 . elem-of . A) (d-fun-type (z2 . elem-of . (fiber . $* . f (f . $ . x1))) (is-trunc . $* . n ((record-elem (list fiber:elem x1) (list fiber:id refl)) . id-type . z2)))))
          @(math log-equiv/symb) @%{@ref["005S"]}
          @(math (d-fun-type (x1 . elem-of . A) (d-fun-type (z2 . elem-of . (fiber . $* . f (f . $ . x1))) (is-trunc . $* . n (fiber . $* . (fun-apply-id . $* . f) ((proj 2) . $ . z2))))))
          @(math log-equiv/symb) @%{並び替え}
          @(math (d-fun-type (x2 x1 . elem-of* . A) (d-fun-type (p . elem-of . ((f . $ . x2) . id-type . (f . $ . x1))) (is-trunc . $* . n (fiber . $* . (fun-apply-id . $ . f) p)))))
          @(math log-equiv/symb) @%{定義}
          @(math (d-fun-type (x2 x1 . elem-of* . A) (is-trunc-map . $* . n ((fun-apply-id . $ . f) . $i* . x2 x1))))
        ]
      }
    }
  ]
]
