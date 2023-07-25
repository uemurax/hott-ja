#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/span.rkt")

(define i "i")
(define A "A")
(define B "B")
(define C "C")
(define D "D")
(define x "x")

@definition[
  #:id (current-id)
  @paragraph{
    @(math i)を階数、@(math (A . elem-of . (span . $ . i)))をスパン、@(math (B . elem-of . (span-over . $ . A)))を@(math A)上のスパン、@(math (C . elem-of . (span/cocone . $ . A)))を余錐、@(math (D . elem-of . (span/cocone-over . $* . B C)))を@(math C)上の余錐とする。余錐@(math ((total-span/cocone . $ . D) . elem-of . (span/cocone . $ . (total-span . $ . B))))を次のように定義する。
    @unordered-list[
      @list-item{@(math (span/cocone:vertex . def-eq . (d-pair-type (x . elem-of . (C . record-field . span/cocone:vertex)) ((D . record-field . span/cocone-over:vertex) . $ . x))))}
      @list-item{@(math ((span/cocone:in-left . $ . x) . def-eq . (pair . $* . ((C . record-field . span/cocone:in-left) . $ . ((proj 1) . $ . x)) ((D . record-field . span/cocone-over:in-left) . $ . ((proj 2) . $ . x)))))}
      @list-item{@(math ((span/cocone:in-right . $ . x) . def-eq . (pair . $* . ((C . record-field . span/cocone:in-right) . $ . ((proj 1) . $ . x)) ((D . record-field . span/cocone-over:in-right) . $ . ((proj 2) . $ . x)))))}
      @list-item{@(math ((span/cocone:in-center . $ . x) . def-eq . (pair . $* . ((C . record-field . span/cocone:in-center) . $ . ((proj 1) . $ . x)) ((D . record-field . span/cocone-over:in-center) . $ . ((proj 2) . $ . x)))))}
      @list-item{@(math (span/cocone:in-leg-l . $ . x))は@(math (pair . $* . ((C . record-field . span/cocone:in-leg-l) . $ . ((proj 1) . $ . x)) ((D . record-field . span/cocone-over:in-leg-l) . $ . ((proj 2) . $ . x))))に@ref["002B"]を適用して定義する。}
      @list-item{@(math (span/cocone:in-leg-r . $ . x))は@(math (pair . $* . ((C . record-field . span/cocone:in-leg-r) . $ . ((proj 1) . $ . x)) ((D . record-field . span/cocone-over:in-leg-r) . $ . ((proj 2) . $ . x))))に@ref["002B"]を適用して定義する。}
    ]
  }
]
