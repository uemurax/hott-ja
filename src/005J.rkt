#lang morg

@section[
  #:id (current-id)
  #:title @%{関手}
  @paragraph{
    @emph{関手}は前圏の間の構造を保つ関数である。
  }
  (include-part "005K.rkt")
  (include-part "005L.rkt")
  (include-part "0060.rkt")
  @paragraph{
    @ref["0022"]や@ref["004V"]と同様に、前圏の@emph{構造同一原理}が得られる。
  }
  (include-part "005M.rkt")
  (include-part "005N.rkt")
  @paragraph{
    従来の圏論においては、@ref["005M"]は圏の同一視の概念としては強過ぎて、次の@emph{弱圏同値}こそが「正しい」圏の同一視の概念とされる。
  }
  (include-part "005O.rkt")
  @paragraph{
    ホモトピー型理論での圏論では、圏の間の関手が前圏の同型であることと弱圏同値であることは同値であることに差はなくなる(@ref["005P"])。@ref["005N"]と合わせると、圏の間に弱圏同値があればそれらの圏は同一視される(@ref["0064"])。よって、弱圏同値が正しい同一視の概念であることが厳密な定理として得られる。
  }
  (include-part "0061.rkt")
  (include-part "006Y.rkt")
  (include-part "006Z.rkt")
  (include-part "0063.rkt")
  (include-part "0075.rkt")
  (include-part "005P.rkt")
  (include-part "0064.rkt")
]
