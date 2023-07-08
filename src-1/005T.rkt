#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt")

(provide-part (id)
  @section[
    #:id id
    #:title @%{連結性}
    @paragraph{
      @${n}型は@${n}次元より上の構造が自明な型であったが、逆に@${n}次元以下の構造が自明な型を導入する。
    }
    (include-part "005U.rkt")
    ;(include-part "005V.rkt")
    ;(include-part "005W.rkt")
    ;(include-part "005X.rkt")
    @paragraph{
      定義から、任意の関数は@($ trunc-level:-2)連結である。@($ trunc-level:-1)連結な関数は@emph{全射}であると考える。
    }
    ;(include-part "005Z.rkt")
    ;(include-part "0074.rkt")
  ])

(module+ main
  (require morg/text)
  (preview))
