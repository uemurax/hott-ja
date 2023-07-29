#lang morg

(require "lib/math.rkt"
         "lib/math/localization.rkt")

(define G "G")
(define A "A")
(define f "f")
(define k "k")

@section[
  #:id (current-id)
  #:title @%{局所化}
  @paragraph{
    ファイバー余積以外の重要な高次帰納的型として@emph{局所化(localization)}がある。
  }
  (include-part "007Z.rkt")
  (include-part "0080.rkt")
  @paragraph{
    型@(math A)の@emph{@(math G)-局所化}(@ref["0084"])は@(math A)に最も近い@(math G)-局所的な型のことである。@(math G)-局所化の構成への最初の段階として、次の高次帰納的型を導入する。
  }
  (include-part "0081.rkt")
  @paragraph{
    @(math (weak-localization . $* . G A))は@emph{再帰的}な高次帰納的型の例である。ここでいう再帰的とは、@(math weak-localization:ext)と@(math weak-localization:is-ext)の引数@(math f)の型@(math (((G . record-field . local-generator:domain) . $ . k) . fun-type . (weak-localization . $* . G A)))に@(math (weak-localization . $* . G A))自身が現れるということである。ファイバー余積(@ref["003R"])は再帰的な高次帰納的型ではない。
  }
  @paragraph{
    定義から、関数@disp{
      @(math ((abs f (f . fun-comp . ((G . record-field . local-generator:fun) . $ . k))) . elem-of . ((paren (((G . record-field . local-generator:codomain) . $ . k) . fun-type . (weak-localization . $* . G A))) . fun-type . (paren (((G . record-field . local-generator:domain) . $ . k) . fun-type . (weak-localization . $* . G A))))))
    }のファイバーは(関数外延性の下で)要素を持つが可縮であるとまでは言えない。可縮性を保証するためにはより高次の同一視の構成子を追加するのも一つの手だが、実は@(math G)に関数を追加することでも実現できる。
  }
  (include-part "0082.rkt")
  (include-part "0083.rkt")
  (include-part "0084.rkt")
  @paragraph{
    @(math (localization . $* . G A))は次の@emph{普遍性}を満たす。
  }
  (include-part "0085.rkt")
]
