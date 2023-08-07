#lang morg

(require "lib/markup/example.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/level.rkt"
         "lib/math/pointed-type.rkt")

(define i "i")

@example[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "てんつきかた"]{点付き型}
    @notation-index[#:key "U*(i)"]{@(math (pointed-type . $ . i))}
  ]
  @paragraph{
    @(math i)を階数とする。型@(math ((pointed-type . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (pointed-type:carrier . elem-of . (universe . $ . i)))}
      @list-item{@(math (pointed-type:point . elem-of . pointed-type:carrier))}
    ]
    @(math (pointed-type . $ . i))の要素を(階数@(math i)の)@dfn{点付き型(pointed type)}と呼ぶ。
  }
]
