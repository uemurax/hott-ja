#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/magma.rkt"
         morg/eq-reasoning)

(define i "i")
(define A "A")
(define E "E")
(define X "X")
(define Z "Z")
(define e "e")
(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define f "f")

@example[
  #:id (current-id)
  @paragraph{
    @(math i)を階数とする。@(math (magma . $ . i)) (@ref["008B"])の同一視型を特徴付ける。@(math (A . elem-of . (magma . $ . i)))に対し、@(math (E . elem-of . ((magma . $ . i) . fun-type . (universe . $ . i))))を
    @disp{
      @(math (abs Z (d-pair-type (e . elem-of . ((A . record-field . magma:carrier) . equiv . (Z . record-field . magma:carrier))) (d-fun-type (x1 x2 . elem-of* . (A . record-field . magma:carrier)) ((e . $ . ((A . record-field . magma:operator) . $* . x1 x2)) . id-type . ((Z . record-field . magma:operator) . $* . (e . $ . x1) (e . $ . x2)))))))
    }
    と定義する。要素@(math ((pair . $* . id-fun (abs* x1 x2 refl)) . elem-of . (E . $ . A)))を得る。レトラクトの列
    @disp{
      @eq-reasoning[
        @(math (d-pair-type (Z . elem-of . (magma . $ . i)) (E . $ . Z)))
        @(math retract-rel/symb) @%{並び換え}
        @(math (d-pair-type (X . elem-of . (universe . $ . i)) (d-pair-type (e . elem-of . ((A . record-field . magma:carrier) . equiv . X)) (d-pair-type (f . elem-of . (X . fun-type . (X . fun-type . X))) (d-fun-type (x1 x2 . elem-of* . (A . record-field . magma:carrier)) ((e . $ . ((A . record-field . magma:operator) . $* . x1 x2)) . id-type . (f . $* . (e . $ . x1) (e . $ . x2))))))))
        @(math retract-rel/symb) @%{一価性}
        @(math (d-pair-type (f . elem-of . ((A . record-field . magma:carrier) . fun-type . ((A . record-field . magma:carrier) . fun-type . (A . record-field . magma:carrier)))) (d-fun-type (x1 x2 . elem-of* . (A . record-field . magma:carrier)) (((A . record-field . magma:operator) . $* . x1 x2) . id-type . (f . $* . x1 x2)))))
      ]
    }
    を得て、最後の型は関数外延性により可縮なので、@(math (d-pair-type (Z . elem-of . (magma . $ . i)) (E . $ . Z)))は可縮である。
  }
]
