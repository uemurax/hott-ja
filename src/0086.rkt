#lang morg

(require "lib/markup/notation.rkt"
         "lib/index/notation.rkt"
         "lib/math.rkt"
         (prefix-in tex: morg/math/tex))

(define α tex:alpha)
(define β tex:beta)

@notation[
  #:id (current-id)
  #:indexes @list[
    @notation-index[#:key "a==b"]{@(math (α . def-eq . β))}
  ]
  @paragraph{
    同じ種類の対象@(math α)と@(math β)が@emph{定義により等しい}ことを@(math (α . def-eq . β))と書く。
  }
]
