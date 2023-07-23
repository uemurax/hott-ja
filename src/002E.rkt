#lang morg

(require "lib/markup/lemma.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         morg/eq-reasoning)

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define f "f")
(define g "g")
(define b "b")
(define r "r")
(define y "y")

@lemma[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A B C . elem-of* . (universe . $ . i)))を型、@(math (f . elem-of . (A . fun-type . B)))と@(math (g . elem-of . (B . fun-type . C)))を関数とする。@(math f)と@(math g)と@(math (g . fun-comp . f))のうちいずれか二つが同値ならば残りの一つも同値である。つまり、次の型の要素を構成できる。
    @unordered-list[
      @list-item{@(math ((is-equiv . $ . f) . fun-type . ((is-equiv . $ . g) . fun-type . (is-equiv . $ . (g . fun-comp . f)))))}
      @list-item{@(math ((is-equiv . $ . f) . fun-type . ((is-equiv . $ . (g . fun-comp . f)) . fun-type . (is-equiv . $ . g))))}
      @list-item{@(math ((is-equiv . $ . g) . fun-type . ((is-equiv . $ . (g . fun-comp . f)) . fun-type . (is-equiv . $ . f))))}
    ]
  }
  #:proof @proof[
    @paragraph{
      @(math f)が同値であると仮定すると、@ref["002L"]と@ref["001K"]から@(math ((is-equiv . $ . g) . log-equiv . (is-equiv . $ . (g . fun-comp . f))))が従う。
    }
    @paragraph{
      @(math g)と@(math (g . fun-comp . f))が同値であると仮定する。@(math (b . elem-of . B))を仮定する。@(math (r . elem-of . (fiber . $* . g (g . $ . b))))を@(math (record-elem (list fiber:elem b) (list fiber:id refl)))と定義する。レトラクト
      @disp{
        @eq-reasoning[
          @(math (fiber . $* . (g . fun-comp . f) (g . $ . b)))
          @(math bi-retract-rel/symb) @%{@ref["002L"]}
          @(math (d-pair-type (y . elem-of . (fiber . $* . g (g . $ . b))) (fiber . $* . f (y . record-field . fiber:elem))))
          @(math bi-retract-rel/symb) @%{@(math g)が同値}
          @(math (fiber . $* . f (r . record-field . fiber:elem)))
        ]
      }
      を得て、@(math ((r . record-field . fiber:elem) . def-eq . b))であることに注意すると、@(math (g . fun-comp . f))が同値なので@(math (fiber . $* . f b))は可縮である。
    }
  ]
]
