#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt")

(define x "x")
(define y "y")
(define n "n")
(define i "i")
(define A "A")
(define a "a")

@notation[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "れこーどがた"]{レコード型}
  ]
  @paragraph{
    記法@(math (record-type... (list (x . _ . "1") (A . _ . "1")) (list (x . _ . n) (A . _ . n))))を次のように定める。
    @unordered-list[
      @list-item{@(math (record-type))は@(math unit-type)のこととする。}
      @list-item{@(math (record-type... (list (x . _ . "1") (A . _ . "1")) (list (x . _ . (n . + . "1")) (A . _ . (n . + . "1")))))は@(math (d-pair-type ((x . _ . "1") . elem-of . (A . _ . "1")) (record-type... (list (x . _ . "2") (A . _ . "2")) (list (x . _ . (n . + . "1")) (A . _ . (n . + . "1"))))))のこととする。}
    ]
    この形の型を@dfn{レコード型(record type)}と呼ぶ。また、記法@(math (record-elem... (list (x . _ . "1") (a . _ . "1")) (list (x . _ . n) (A . _ . n))))を次のように定める。
    @unordered-list[
      @list-item{@(math (record-elem))は@(math unit-elem)のこととする。}
      @list-item{@(math (record-elem... (list (x . _ . "1") (a . _ . "1")) (list (x . _ . (n . + . "1")) (a . _ . (n . + . "1")))))は@(math (pair . $* . (a . _ . "1") (record-elem... (list (x . _ . "2") (a . _ . "2")) (list (x . _ . (n . + . "1")) (a . _ . (n . + . "1"))))))のこととする。}
    ]
    これらの記法は、各@(math (a . _ . i))が@(math ((A . _ . i) . subst-apply... . (list (x . _ . "1") (a . _ . "1")) (list (x . _ . (i . - . "1")) (a . _ . (i . - . "1")))))の要素の時に@(math (record-elem... (list (x . _ . "1") (a . _ . "1")) (list (x . _ . n) (a . _ . n))))が@(math (record-type... (list (x . _ . "1") (A . _ . "1")) (list (x . _ . n) (A . _ . n))))の要素になるように設計されている。さらに、@(math (a . elem-of . (record-type... (list (x . _ . "1") (A . _ . "1")) (list (x . _ . n) (A . _ . n)))))を要素、@(math y)を@(math (x . _ . "1"))から@(math (x . _ . n))のいずれかとする時、記法@(math (a . record-field . y))を次のように定める。
    @unordered-list[
      @list-item{@(math y)が@(math (x . _ . "1"))の時、@(math (a . record-field . (x . _ . "1")))は@(math ((proj 1) . $ . a))のこととする。}
      @list-item{@(math y)が@(math (x . _ . "2"))から@(math (x . _ . n))のいずれかの時、@(math (a . record-field . y))は@(math (((proj 2) . $ . a) . record-field . y))のこととする。}
    ]
    この記法は@(math ((a . record-field . (x . _ . i)) . elem-of . ((A . _ . i) . subst-apply... . (list (x . _ . "1") (a . _ . "1")) (list (x . _ . (i . - . "1")) (a . _ . (i . - . "1"))))))となるように設計されている。また、@(math (((record-elem... (list (x . _ . "1") (a . _ . "1")) (list (x . _ . n) (a . _ . n))) . record-field . (x . _ . i)) . def-eq . (a . _ . i)))であることと@(math (a . def-eq . (record-elem... (list (x . _ . "1") (a . record-field . (x . _ . "1"))) (list (x . _ . n) (a . record-field . (x . _ . n))))))であることを確かめられる。
  }
]
