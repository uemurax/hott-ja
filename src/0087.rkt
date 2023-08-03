#lang morg

(require "lib/markup/notation.rkt"
         "lib/index/notation.rkt"
         (prefix-in tex: morg/math/tex)
         "lib/math.rkt")

(define α tex:alpha)
(define x "x")
(define a "a")
(define n "n")
(define i "i")

@notation[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "a[x:=b]"]{@(math (α . subst-apply... . (list (x . _ . "1") (a . _ . "1")) (list (x . _ . n) (a . _ . n))))}
  ]
  @paragraph{
    @(math α)を仮定@(math (seq (x . _ . "1") dots (x . _ . n)))の下での対象、@(math (a . _  . i))を@(math (x . _ . i))と同じ種類の対象とする。@(math α)の構成において各@(math (x . _ . i))に@(math (a . _ . i))を@emph{代入}したものはまた妥当な構成である。代入の結果得られる対象を@(math (α . subst-apply... . (list (x . _ . "1") (a . _ . "1")) (list (x . _ . n) (a . _ . n))))と書く。
  }
]
