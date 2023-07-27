#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/span.rkt")

(define i "i")
(define A "A")
(define B "B")
(define x "x")

@definition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (span . $ . i)))をスパン、@(math (B . elem-of . (span-over . $ . A)))を@(math A)上のスパンとする。スパン@(math ((total-span . $ . B) . elem-of . (span . $ . i)))を次のように定義する。
    @unordered-list[
      @list-item{@(math (span:left . def-eq . (d-pair-type (x . elem-of . (A . record-field . span:left)) ((B . record-field . span-over:left) . $ . x))))}
      @list-item{@(math (span:right . def-eq . (d-pair-type (x . elem-of . (A . record-field . span:right)) ((B . record-field . span-over:right) . $ . x))))}
      @list-item{@(math (span:center . def-eq . (d-pair-type (x . elem-of . (A . record-field . span:center)) ((B . record-field . span-over:center) . $ . x))))}
      @list-item{@(math ((span:leg-l . $ . x) . def-eq . (pair . $* . ((A . record-field . span:leg-l) . $ . ((proj 1) . $ . x)) ((B . record-field . span:leg-l) . $ . ((proj 2) . $ . x)))))}
      @list-item{@(math ((span:leg-r . $ . x) . def-eq . (pair . $* . ((A . record-field . span:leg-r) . $ . ((proj 1) . $ . x)) ((B . record-field . span:leg-r) . $ . ((proj 2) . $ . x)))))}
    ]
  }
]
