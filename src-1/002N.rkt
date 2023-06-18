#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(require "001M.rkt")

(provide part:002N)

(define part:002N
  @section[
    #:id "002N"
    #:title @%{高次グルーポイド構造}
    @paragraph{
      要素@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))に対して、@($ (("a" . _ . "1") . id-type . ("a" . _ . "2")))がまた型であるということは、同一視@($ (("p" . _ . "1") . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))と@($ (("p" . _ . "2") . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))に対してもまた同一視型@($ (("p" . _ . "1") . id-type . ("p" . _ . "2")))がある。同一視@($ (("q" . _ . "1") . elem-of . (("p" . _ . "1") . id-type . ("p" . _ . "2"))))と@($ (("q" . _ . "2") . elem-of . (("p" . _ . "1") . id-type . ("p" . _ . "2"))))に対してさらに同一視型@($ (("q" . _ . "1") . id-type . ("q" . _ . "2")))があり、これを繰り返すと好きなだけ「高次の」同一視型を得る。実は、これらの高次の同一視型たちは@emph{∞グルーポイド}と呼ばれる構造の一部であることが知られている@ref["Lumsdaine--2010-0000"]@ref["van-den-Berg--Garner--2011-0000"]。∞グルーポイドの構造は無限個の演算を持つ複雑なもので深入りはしない。ただ覚えておくとよいのは、あらゆる型が自動的にそのような豊富な構造を持ち、あらゆる構成が自動的にその構造と整合的になるということである。
    }
    @paragraph{
      ∞グルーポイドの持つ構造の一部を挙げる。∞グルーポイドの文脈では要素@($ ("p" . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))は@emph{射}と呼ばれる。@($ ((refl ("a" . _ . "1")) . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "1"))))は@emph{恒等射}、@($ (@id-inv{p} . elem-of . (("a" . _ . "2") . id-type . ("a" . _ . "1"))))は@emph{逆射}、@($ (("q" . id-comp . "p") . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "3"))))は@emph{合成射}と呼ばれる。@($ ((id-extension (seq ("p" . _ . "1") ("p" . _ . "2"))) . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))は@($ (("p" . _ . "2") . elem-of . (("a" . _ . "0") . id-type . ("a" . _ . "2"))))の@($ (("p" . _ . "1") . elem-of . (("a" . _ . "0") . id-type . ("a" . _ . "1"))))に沿った@emph{拡張}である。
    }
    part:001M
    ;part:0027
    ;part:002O
    ;part:002P
    ;part:0047
    ;part:002R
    ;part:002Q
    ;part:002S
  ])

(module+ main
  (require morg/text)
  (display (->text part:002N)))
