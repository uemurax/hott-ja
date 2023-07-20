#lang morg

(require "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/group.rkt")

(define x "x")
(define x1 (x . _ . "1"))
(define x2 (x . _ . "2"))
(define C "C")
(define i "i")

@section[
  #:id (current-id)
  #:title @%{圏}
  (include-part "005C.rkt")
  @paragraph{
    射の型@(math (cat:map . $* . x1 x2))は集合であると要請される。これは、群の定義(@ref["004W"])において@(math group:carrier)は集合としたのと同様である。対して、@(math cat:obj)は集合とは限らない。
  }
  (include-part "005D.rkt")
  (include-part "006H.rkt")
  (include-part "006N.rkt")
  @paragraph{
    前圏@(math C)の対象の間には、同一視型の他に@emph{同型}という同一視の概念が考えらる。
  }
  (include-part "005E.rkt")
  (include-part "005G.rkt")
  (include-part "005H.rkt")
  (include-part "005F.rkt")
  @paragraph{
    同型の基本性質は次のようにまとめられる。
  }
  (include-part "006X.rkt")
  @paragraph{
    @emph{圏}とは、前圏であって対象の間の同型の型と同一視型が同値になるようなものである。
  }
  (include-part "005I.rkt")
  @paragraph{
    @(math C)を圏とすると、恒等射は同型なので@ref["001S"]を適用できて、同値
    @disp{
      @(math (d-fun-type (x1 x2 . elem-of* . C) ((x1 . id-type . x2) . equiv . (x1 . cat:iso . x2))))
    }
    を得る。逆に、前圏@(math C)が圏であることを示すにはこのような同値を構成すれば十分である。
  }
  @paragraph{
    圏の典型例として、@(math (set-cat . $ . i)) (@ref["006H"])が圏であることを見る。
  }
  (include-part "006I.rkt")
  (include-part "006J.rkt")
]
