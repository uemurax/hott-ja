#lang morg

(require "lib/markup/definition.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         "lib/math/span.rkt"
         "lib/math/level.rkt")

(define i "i")
(define A "A")
(define x "x")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "Aじょうのすぱん"]{@(math A)上のスパン}
    @notation-index[#:key "SpanOver"]{@(math span-over)}
  ]
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (span . $ . i)))をスパンとする。型@(math ((span-over . $ . A) . elem-of . (universe . $ . (level:succ . $ . i))))を次のレコード型と定義する。
    @unordered-list[
      @list-item{@(math (span-over:left . elem-of . ((A . record-field . span:left) . fun-type . (universe . $ . i))))}
      @list-item{@(math (span-over:right . elem-of . ((A . record-field . span:right) . fun-type . (universe . $ . i))))}
      @list-item{@(math (span-over:center . elem-of . ((A . record-field . span:center) . fun-type . (universe . $ . i))))}
      @list-item{@(math (span-over:leg-l . elem-of . (d-fun-type (implicit (x . elem-of . (A . record-field . span:center))) ((span-over:center . $ . x) . fun-type . (span-over:left . $ . ((A . record-field . span:leg-l) . $ . x))))))}
      @list-item{@(math (span-over:leg-r . elem-of . (d-fun-type (implicit (x . elem-of . (A . record-field . span:center))) ((span-over:center . $ . x) . fun-type . (span-over:right . $ . ((A . record-field . span:leg-r) . $ . x))))))}
    ]
    @(math (span-over . $ . A))の要素を@dfn{@(math A)上のスパン}と呼ぶ。
  }
]
