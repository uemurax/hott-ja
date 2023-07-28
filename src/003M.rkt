#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/nat.rkt"
         "lib/math/sphere.rkt"
         "lib/math/coproduct.rkt"
         "lib/math/suspension.rkt"
         "lib/math/empty.rkt"
         "lib/math/level.rkt")

(define n "n")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "nじげんきゅうめん"]{@(math n)次元球面}
    @notation-index[#:key "S-1"]{@(math (sphere "-1"))}
    @notation-index[#:key "Sn"]{@(math (sphere n))}
  ]
  @paragraph{
    自然数@(math (n . elem-of . nat))に対して、@dfn{@(math n)次元球面(@(math n)-dimensional sphere)} @(math ((sphere n) . elem-of . (universe . $ . level:zero)))を次のように定義する。
    @unordered-list[
      @list-item{便宜的に@(math "-1")次元球面@(math (sphere "-1"))を@(math empty-type)と定義する。}
      @list-item{@(math ((sphere nat:zero) . def-eq . (suspension . $ . (sphere "-1"))))}
      @list-item{@(math ((sphere (nat:succ . $ . n)) . def-eq . (suspension . $ . (sphere n))))}
    ]
  }
]
