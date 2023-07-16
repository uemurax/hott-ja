#lang morg

(require "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/nat.rkt")

@example[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "げんしさいき"]{原始再帰}
  ]
  @paragraph{
    @($ ("n" . elem-of . nat))を要素、@($ ("f" . elem-of . (nat . fun-type . (nat . fun-type . nat))))を関数とする。@dfn{原始再帰(primitive recursion)}による関数@($ ((prim-rec (seq "n" "f")) . elem-of . (nat . fun-type . nat)))が@($ ((prim-rec (seq "n" "f" nat:zero)) . def-eq . "n"))と@($ ((prim-rec (seq "n" "f" @nat:succ{m})) . def-eq . ("f" . fun-apply . (seq "m" (prim-rec (seq "n" "f" "m"))))))で定義される。形式的には@($ ((prim-rec (seq "n" "f")) . def-eq . (abs "m" (nat:ind (seq "m" (abs "x" nat) "n" (abs (seq "x" "y") ("f" . fun-apply . (seq "x" "y"))))))))である。よって、いわゆる@emph{原始再帰的関数}はすべて構成できる。
  }
]
