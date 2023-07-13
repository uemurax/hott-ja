#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/markup/notation.rkt"
         "lib/markup.rkt")

(provide-part (id)
  @notation[
    #:id id
    @paragraph{
      大きなレコード型を定義する際には、文章内で@($ (record-type (seq (("x" . _ . "1") . elem-of . ("A" . _ . "1")) dots (("x" . _ . "n") . elem-of . ("A" . _ . "n")))))と書く代わりに縦に並べて
      @unordered-list[
        @list-item{@($ (("x" . _ . "1") . elem-of . ("A" . _ . "1")))}
        @list-item{@($ vdots)}
        @list-item{@($ (("x" . _ . "n") . elem-of . ("A" . _ . "n")))}
      ]
      と書くことがある。レコード型の要素を定義する際にも同様に縦に並べて書くことがある。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
