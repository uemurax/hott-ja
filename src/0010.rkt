#lang morg

(require "lib/math.rkt"
         "lib/markup/example.rkt")

(define i "i")
(define A "A")
(define x "x")

@example[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "こうとうかんすう"]{恒等関数}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とする。@dfn{恒等関数(identity function)}@(math ((id-fun . $i . A) . elem-of . (A . fun-type . A)))を@(math (abs x x))と定義する。
  }
]
