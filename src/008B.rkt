#lang morg

(require "lib/markup/example.rkt"
         "lib/index/notation.rkt"
         "lib/math/level.rkt"
         "lib/math.rkt"
         "lib/math/magma.rkt")

(define i "i")

@example[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "まぐま"]{マグマ}
    @notation-index[#:key "Magma(i)"]{@(math (magma . $ . i))}
  ]
  @paragraph{
    @(math i)を階数とする。型@(math ((magma . $ . i) . elem-of . (universe . $ . (level:succ . $ . i))))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (magma:carrier . elem-of . (universe . $ . i)))}
      @list-item{@(math (magma:operator . elem-of . (magma:carrier . fun-type . (magma:carrier . fun-type . magma:carrier))))}
    ]
    @(math (magma . $ . i))の要素を@dfn{マグマ(magma)}と呼ぶ。
  }
]
