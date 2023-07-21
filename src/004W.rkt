#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/group.rkt"
         "lib/math/set.rkt")

(define i "i")
(define G "G")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define x3 (x . _ . "3"))
(define X "X")
(define A "A")
(define B "B")
(define f "f")

@example[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ぐん"]{群}
    @index[#:key "ぐんどうけい"]{群同型}
  ]
  @paragraph{
    @(math i)を階数とする。型@(math ((group-str . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (group:carrier . elem-of . (universe . $ . i)))}
      @list-item{@(math (group:unit . elem-of . group:carrier))}
      @list-item{@(math (group:mul . elem-of . (group:carrier . fun-type . (group:carrier . fun-type . group:carrier))))}
      @list-item{@(math (group:inv . elem-of . (group:carrier . fun-type . group:carrier)))}
    ]
    要素@(math (G . elem-of . (group-str . $ . i)))に対して、型@(math ((group-axiom . $ . G) . elem-of . (universe . $ . i)))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (blank . elem-of . (is-set . $ . (G . record-field . group:carrier))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x . elem-of . (G . record-field . group:carrier)) ((G . record-field . (group:mul . $* .  (G . record-field . group:unit) x)) . id-type . x))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x . elem-of . (G . record-field . group:carrier)) (((G . record-field . group:mul) . $* . x (G . record-field . group:unit)) . id-type . x))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x1 x2 x3 . elem-of* . (G . record-field . group:carrier)) (((G . record-field . group:mul) . $* . ((G . record-field . group:mul) . $* . x1 x2) x3) . id-type . ((G . record-field . group:mul) . $* . x1 ((G . record-field . group:mul) . $* . x3 x3))))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x . elem-of . (G . record-field . group:carrier)) (((G . record-field . group:mul) . $* . ((G . record-field . group:inv) . $ . x) x) . id-type . (G . record-field . group:unit)))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (x . elem-of . (G . record-field . group:carrier)) (((G . record-field . group:mul) . $* . x ((G . record-field . group:inv) . $ . x)) . id-type . (G . record-field . group:unit)))))}
    ]
    型@(math ((group . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を@(math (d-pair-type (X . elem-of . (group-str . $ . i)) (group-axiom . $ . X)))と定義する。@(math (group . $ . i))の要素を(階数@(math i)の)@dfn{群(group)}と呼ぶ。群@(math (A B . elem-of* . (group . $ . i)))に対して、同一視型@(math (A . id-type . B))を計算しよう。@ref["004X"]と@ref["0048"]より@(math (group-axiom . $ . X))は命題であることが分かるので、@ref["0049"]より同値@(math ((A . id-type . B) . equiv . (((proj 1) . $ . A) . id-type . ((proj 1) . $ . B))))を得る。@ref["0028"]と同様に、@(math (((proj 1) . $ . A) . id-type . ((proj 1) . $ . B)))は次のレコード型と同値であることが分かる。
    @unordered-list[
      @list-item{@(math (f . elem-of . ((((proj 1) . $ . A) . record-field . group:carrier) . equiv . (((proj 1) . $ . B) . record-field . group:carrier))))}
      @list-item{@(math (blank . elem-of . ((f . $ . (((proj 1) . $ . A) . record-field . group:unit)) . id-type . (((proj 1) . $ . B) . record-field . group:unit))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (seq x1 x2) ((f . $ . ((((proj 1) . $ . A) . record-field . group:mul) . $* . x1 x2)) . id-type . ((((proj 1) . $ . B) . record-field . group:mul) . $* . (f . $ . x1) (f . $ . x2))))))}
      @list-item{@(math (blank . elem-of . (d-fun-type x ((f . $ . ((((proj 1) . $ . A) . record-field . group:inv) . $ . x)) . id-type . ((((proj 1) . $ . B) . record-field . group:inv) . $ . (f . $ . x))))))}
    ]
    この型の要素はいわゆる@dfn{群同型(group isomorphism)}である。@(math (group-axiom . $ . G))の定義で@(math (is-set . $ . (G . record-field . group:carrier)))を落とすと、@(math (group . $ . i))の同一視の特徴付けは演算だけでなく残りの構造も保つ同値というものになってしまう。
  }
  @paragraph{
    ちなみに、群の間の乗法を保つ関数は単位元と逆元も保つことを示せるので、群同型の型は次のレコード型とも同値である。
    @unordered-list[
      @list-item{@(math (f . elem-of . ((((proj 1) . $ . A) . record-field . group:carrier) . equiv . (((proj 1) . $ . B) . record-field . group:carrier))))}
      @list-item{@(math (blank . elem-of . (d-fun-type (seq x1 x2) ((f . $ . ((((proj 1) . $ . A) . record-field . group:mul) . $* . x1 x2)) . id-type . ((((proj 1) . $ . B) . record-field . group:mul) . $* . (f . $ . x1) (f . $ . x2))))))}
    ]
  }
]
