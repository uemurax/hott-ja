#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/span.rkt"
         "lib/math/level.rkt")

(define i "i")
(define A "A")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "すぱんかのよすい"]{スパン下の余錐}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (span . $ . i)))をスパンとする。型@(math ((span/cocone . $ . A) . elem-of . (universe . $ . (level:succ . $ . i))))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (span/cocone:vertex . elem-of . (universe . $ . i)))}
      @list-item{@(math (span/cocone:in-left . elem-of . ((A . record-field . span:left) . fun-type . span/cocone:vertex)))}
      @list-item{@(math (span/cocone:in-right . elem-of . ((A . record-field . span:right) . fun-type . span/cocone:vertex)))}
      @list-item{@(math (span/cocone:in-center . elem-of . ((A . record-field . span:center) . fun-type . span/cocone:vertex)))}
      @list-item{@(math (span/cocone:in-leg-l . elem-of . (d-fun-type (x . elem-of . (A . record-field . span:center)) ((span/cocone:in-center . $ . x) . id-type . (span/cocone:in-left . $ . ((A . record-field . span:leg-l) . $ . x))))))}
      @list-item{@(math (span/cocone:in-leg-r . elem-of . (d-fun-type (x . elem-of . (A . record-field . span:center)) ((span/cocone:in-center . $ . x) . id-type . (span/cocone:in-right . $ . ((A . record-field . span:leg-r) . $ . x))))))}
    ]
    @(math (span/cocone . $ . A))の要素を@(math A)下の@dfn{余錐(cocone)}と呼ぶ。
  }
]
