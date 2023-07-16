#lang morg

(require "lib/math.rkt")

@section[
  #:id (current-id)
  #:title @%{関数型}
  @paragraph{
    @emph{関数}は型理論において最も基本的な概念である。
  }
  (include-part "000H.rkt")
  @paragraph{
    関数型の導入により、仮定@($ ("x" . elem-of . "A"))の下での@${B}の要素と@($ (d-fun-type ("x" . elem-of . "A") "B"))型の関数は同じように振る舞う。以降は仮定の下での要素の代わりに関数を使う。
  }
  (include-part "000G.rkt")
  (include-part "000J.rkt")
  (include-part "000I.rkt")
  (include-part "0010.rkt")
  (include-part "0011.rkt")
  (include-part "0012.rkt")
  (include-part "0013.rkt")
  (include-part "000Q.rkt")
]
