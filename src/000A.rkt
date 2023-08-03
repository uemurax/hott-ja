#lang morg

(require "lib/math.rkt")

(define x "x")
(define A "A")
(define B "B")
(define i "i")

@section[
  #:id (current-id)
  #:title @%{関数型}
  @paragraph{
    @emph{関数}は型理論において最も基本的な概念である。関数の導入によって、仮定の下での対象をも型理論の対象にすることができ、これは型理論の表現力を飛躍的に向上させる。
  }
  (include-part "000H.rkt")
  @paragraph{
    関数型の導入により、仮定@(math (x . elem-of . A))の下での@(math B)の要素と@(math (d-fun-type (x . elem-of . A) B))型の関数は同じように振る舞う。以降は仮定の下での要素の代わりに関数を使う。
  }
  @paragraph{
    @(math B)が@(math (x . elem-of . A))に依存しない場合は次のように略記する。
  }
  (include-part "000G.rkt")
  (include-part "000J.rkt")
  @paragraph{
    引数が多い関数を適用する時、すべての引数を明示するのはいささか煩雑である。そこで、引数が他の引数の型から推論できる場合に省略できるようにする。
  }
  (include-part "000Q.rkt")
  @paragraph{
    @(math (A . fun-type . (universe . $ . i)))型の関数は@(math A)で添字付けられた@emph{型の族}と考えられる。
  }
  (include-part "000I.rkt")
  @paragraph{
    いくつかの簡単な関数の例を挙げる。
  }
  (include-part "0010.rkt")
  (include-part "0011.rkt")
  (include-part "0012.rkt")
  (include-part "0013.rkt")
]
