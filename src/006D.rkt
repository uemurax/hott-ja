#lang morg

(require "lib/math.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/cat.rkt")

(define C "C")
(define x "x")
(define y "y")
(define A "A")

@section[
  #:id (current-id)
  #:title @%{前層}
  @paragraph{
    圏にとっての@emph{前層}は、群にとっての作用、環にとっての加群に相当するものである。
  }
  (include-part "006E.rkt")
  (include-part "006F.rkt")
  @paragraph{
    つまり、@(math C)上の前層は@(math C)の対象で添え字付けられた集合の族で、@(math C)の射が右から作用しているものである。
  }
  (include-part "006G.rkt")
  (include-part "006L.rkt")
  @paragraph{
    前層と前層の射は前圏をなし、関手のなす前圏としても定義できる(@ref["006M"])。
  }
  (include-part "006K.rkt")
  (include-part "006M.rkt")
  (include-part "006O.rkt")
  (include-part "0072.rkt")
  @paragraph{
    さて、圏論において最も重要な@emph{米田の補題}(@ref["006T"])を導入する。
  }
  (include-part "006S.rkt")
  (include-part "006P.rkt")
  @paragraph{
    @(math (yoneda . $ . C))が埋め込みと呼ばれるのは@ref["006V"]による。定義から、任意の対象@(math (x y . elem-of* . C))に対して@(math ((((yoneda . $ . C) . $ . x) . $ . y) . def-eq . (cat:map . $* . y x)))である。特に、@(math (cat:id . elem-of . (cat:map . $* . x x)))は@(math (((yoneda . $ . C) . $ . x) . $ . x))の要素とも思える。@(math cat:id)をどのように見ているかを区別するために別の表記を導入する。
  }
  (include-part "006U.rkt")
  @paragraph{
    米田の補題が主張するのは、@(math ((yoneda . $ . C) . $ . x))は@(math ((yoneda-gen . $ . x) . elem-of . (((yoneda . $ . C) . $ . x) . $ . x)))で自由に生成された@(math C)上の前層であることである。
  }
  (include-part "006T.rkt")
  (include-part "006V.rkt")
  @paragraph{
    多くの圏論的な概念は、ある前層が@emph{表現可能}であるという性質で定義される。
  }
  (include-part "0070.rkt")
  @paragraph{
    従来の圏論では、@(math C)上の前層@(math A)の普遍要素は「同型を除いて一意」であることが知られている。ホモトピー型理論においては、@(math C)が圏と仮定して普遍要素は一意であること、つまり@(math (is-repr-psh . $ . A))は命題であることが分かる(@ref["0073"])。
  }
  (include-part "0071.rkt")
  (include-part "0073.rkt")
]
