#lang morg

(require "lib/markup/remark.rkt"
         "lib/math.rkt")

(define n "n")

@remark[
  #:id (current-id)
  @paragraph{
    @ref["005V"]の意味での@(math n)連結関数は古典的なホモトピー論における@(math (n . + . "1"))連結写像に対応するものである。
  }
]
