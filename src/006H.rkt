#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/level.rkt"
         "lib/math/proposition.rkt"
         "lib/math/set.rkt")

(define i "i")
(define A "A")
(define B "B")

@example[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数とする。前圏@(math ((set-cat . $ . i) . elem-of . (precat . $ . (level:succ . $ . i))))を次のように定義する。
    @unordered-list[
      @list-item{@(math (cat:obj . def-eq . (prop-compr (A . elem-of . (universe . $ . i)) (is-set . $ . A))))}
      @list-item{@(math (cat:map . def-eq . (abs* A B (A . fun-type . B))))}
      @list-item{恒等射は@ref["0010"]、合成は@ref["0011"]による。}
      @list-item{@ref["0048"]より、各@(math (cat:map . $* . A B))は集合である。}
      @list-item{他の公理は自明である。}
    ]
  }
]
