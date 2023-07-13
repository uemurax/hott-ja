#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/notation.rkt"
         "lib/math.rkt")

(provide-part (id)
  @notation[
    #:id id
    #:indexes @list[
      @index[#:key "れこーどがた"]{レコード型}
    ]
    @paragraph{
      記法@($ (record-type (seq-of [i "1" "n"] (("x" . _ . i) . elem-of . ("A" . _ . i)))))を次のように定める。
      @unordered-list[
        @list-item{@($ (record-type (seq)))は@($ unit-type)のこととする。}
        @list-item{@($ (record-type (seq-of [i "1" ("n" . + . "1")] (("x" . _ . i) . elem-of . ("A" . _ . i)))))は@($ (d-pair-type (("x" . _ . "1") . elem-of . ("A" . _ . "1")) (record-type (seq-of [i "2" ("n" . + . "1")] (("x" . _ . i) . elem-of . ("A" . _ . i))))))のこととする。}
      ]
      この形の型を@dfn{レコード型(record type)}と呼ぶ。また、記法@($ (record-elem (seq-of [i "1" "n"] (("x" . _ . i) . def-eq . ("a" . _ . i)))))を次のように定める。
      @unordered-list[
        @list-item{@($ (record-elem (seq)))は@($ unit-elem)のこととする。}
        @list-item{@($ (record-elem (seq-of [i "1" ("n" . + . "1")] (("x" . _ . i) . def-eq . ("a" . _ . i)))))は@($ (pair (seq ("a" . _ . "1") (record-elem (seq-of [i "2" ("n" . + . "1")] (("x" . _ . i) . def-eq . ("a" . _ . i)))))))のこととする。}
      ]
      これらの記法は、各@($ ("a" . _ . "i"))が@($ (subst-apply ("A" . _ . "i") (seq-of [i "1" ("i" . - . "1")] (("x" . _ . i) . subst-bin . ("a" . _ . i)))))の要素の時に@($ (record-elem (seq-of [i "1" "n"] (("x" . _ . i) . def-eq . ("a" . _ . i)))))が@($ (record-type (seq-of [i "1" "n"] (("x" . _ . i) . elem-of . ("A" . _ . i)))))の要素になるように設計されている。さらに、@($ ("a" . elem-of . (record-type (seq-of [i "1" "n"] (("x" . _ . i) . elem-of . ("A" . _ . i))))))を要素、@${y}を@($ ("x" . _ . "1"))から@($ ("x" . _ . "n"))のいずれかとする時、記法@($ ("a" . record-field . "y"))を次のように定める。
      @unordered-list[
        @list-item{@${y}が@($ ("x" . _ . "1"))の時、@($ ("a" . record-field . ("x" . _ . "1")))は@($ ((proj 1) "a"))のこととする。}
        @list-item{@${y}が@($ ("x" . _ . "2"))から@($ ("x" . _ . "n"))のいずれかの時、@($ ("a" . record-field . "y"))は@($ (((proj 2) "a") . record-field . "y"))のこととする。}
      ]
      この記法は@($ (("a" . record-field . ("x" . _ . "i")) . elem-of . (subst-apply ("A" . _ . "i") (seq-of [i "1" ("i" . - . "1")] (("x" . _ . i) . subst-bin . ("a" . record-field . ("x" . _ . i)))))))となるように設計されている。また、@($ (((record-elem (seq-of [i "1" "n"] (("x" . _ . i) . def-eq . ("a" . _ . i)))) . record-field . ("x" . _ . "i")) . def-eq . ("a" . _ . "i")))であることと@($ ("a" . def-eq . (record-elem (seq-of [i "1" "n"] (("x" . _ . i) . def-eq . ("a" . record-field . ("x" . _ . i)))))))であることを確かめられる。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
