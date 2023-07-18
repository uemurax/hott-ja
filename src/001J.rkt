#lang morg

(require "lib/math.rkt"
         "lib/markup/definition.rkt")

(define i "i")
(define A "A")
(define B "B")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "れとらくと"]{レトラクト}
  ]
  @paragraph{
    @(math i)を階数、@(math (A B . elem-of* . (universe . $ . i)))を型とする。型@(math ((retract . $* . A B) . elem-of . (universe . $ . i)))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (retract:retraction . elem-of . (B . fun-type . A)))}
      @list-item{@(math (retract:section . elem-of . (A . fun-type . B)))}
      @list-item{@(math (retract:id . elem-of . (d-fun-type (x . elem-of . A) ((retract:retraction . $  . (retract:section . $ . x)) . id-type . x))))}
    ]
    @(math (retract . $* . A B))は@(math (A . retract-rel . B))と書くこともある。@(math (A . retract-rel . B))の要素がある時、@(math A)は@(math B)の@dfn{レトラクト(retract)}であると言う。また、@(math (A . bi-retract-rel . B))を@(math ((A . retract-rel . B) . pair-type . (B . retract-rel . A)))と定義する。
  }
]
