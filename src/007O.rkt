#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/span.rkt"
         "lib/math/level.rkt"
         "lib/math/id-over.rkt")

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define x "x")
(define y "y")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "BじょうCかのよすい"]{@(math B)上@(math C)下の余錐}
    @notation-index[#:key "CoconeOver"]{@(math span/cocone-over)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (span . $ . i)))をスパン、@(math (B . elem-of . (span-over . $ . A)))を@(math A)上のスパン、@(math (C . elem-of . (span/cocone . $ . A)))を余錐とする。型@(math ((span/cocone-over . $* . B C) . elem-of . (universe . $ . (level:succ . $ . i))))と次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (span/cocone-over:vertex . elem-of . ((C . record-field . span/cocone:vertex) . fun-type . (universe . $ . i))))}
      @list-item{@(math (span/cocone-over:in-left . elem-of . (d-fun-type (implicit (x . elem-of . (A . record-field . span:left))) (((B . record-field . span-over:left) . $ . x) . fun-type . (span/cocone-over:vertex . $ . ((C . record-field . span/cocone:in-left) . $ . x))))))}
      @list-item{@(math (span/cocone-over:in-right . elem-of . (d-fun-type (implicit (x . elem-of . (A . record-field . span:right))) (((B . record-field . span-over:right) . $ . x) . fun-type . (span/cocone-over:vertex . $ . ((C . record-field . span/cocone:in-right) . $ . x))))))}
      @list-item{@(math (span/cocone-over:in-center . elem-of . (d-fun-type (implicit (x . elem-of . (A . record-field . span:center))) (((B . record-field . span-over:center) . $ . x) . fun-type . (span/cocone-over:vertex . $ . ((C . record-field . span/cocone:in-center) . $ . x))))))}
      @list-item{@(math (span/cocone-over:in-leg-l . elem-of . (d-fun-type (implicit (x . elem-of . (A . record-field . span:center))) (d-fun-type (y . elem-of . ((B . record-field . span-over:center) . $ . x)) ((span/cocone-over:in-center . $ . y) . (id-type-over span/cocone-over:vertex ((C . record-field . span/cocone:in-leg-l) . $ . x)) . (span/cocone-over:in-left . $ . ((B . record-field . span-over:leg-l) . $ . y)))))))}
      @list-item{@(math (span/cocone-over:in-leg-r . elem-of . (d-fun-type (implicit (x . elem-of . (A . record-field . span:center))) (d-fun-type (y . elem-of . ((B . record-field . span-over:center) . $ . x)) ((span/cocone-over:in-center . $ . y) . (id-type-over span/cocone-over:vertex ((C . record-field . span/cocone:in-leg-r) . $ . x)) . (span/cocone-over:in-right . $ . ((B . record-field . span-over:leg-r) . $ . y)))))))}
    ]
    @(math (span/cocone-over . $* . B C))の要素を@dfn{@(math C)上@(math B)下の余錐}と呼ぶ。
  }
]
