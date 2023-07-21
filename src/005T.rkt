#lang morg

(require "lib/math.rkt"
         "lib/math/n-type.rkt")

(define n "n")

@section[
  #:id (current-id)
  #:title @%{連結性}
  @paragraph{
    @(math n)型は@(math n)次元より上の構造が自明な型であったが、逆に@(math n)次元以下の構造が自明な型を導入する。
  }
  (include-part "005U.rkt")
  (include-part "005V.rkt")
  (include-part "005W.rkt")
  (include-part "005X.rkt")
  @paragraph{
    定義から、任意の関数は@(math trunc-level:-2)連結である。@(math trunc-level:-1)連結な関数は@emph{全射}であると考える。
  }
  (include-part "005Z.rkt")
  (include-part "0074.rkt")
]
