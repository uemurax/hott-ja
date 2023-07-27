#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/span.rkt"
         "lib/math/level.rkt")

(define i "i")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "すぱん"]{スパン}
  ]
  @paragraph{
    @(math i)を階数とする。型@(math ((span . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (span:left . elem-of . (universe . $ . i)))}
      @list-item{@(math (span:right . elem-of . (universe . $ . i)))}
      @list-item{@(math (span:center . elem-of . (universe . $ . i)))}
      @list-item{@(math (span:leg-l . elem-of . (span:center . fun-type . span:left)))}
      @list-item{@(math (span:leg-r . elem-of . (span:center . fun-type . span:right)))}
    ]
    @(math (span . $ . i))の要素を(階数@(math i)の)@dfn{スパン(span)}と呼ぶ。
  }
]
