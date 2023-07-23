#lang morg

(require "lib/markup/terminology.rkt"
         "lib/math.rkt")

(define i "i")
(define A "A")
(define B "B")

@terminology[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "かたのぞく"]{型の族}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (universe . $ . i)))を型とする。関数@(math (B . elem-of . (A . fun-type . (universe . $ . i))))を@(math A)上の@dfn{型の族(type family)}と呼ぶ。
  }
]
