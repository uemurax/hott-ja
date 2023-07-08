#lang at-exp typed/racket

(require "lib/markup.rkt")

(provide part:0004)

@define[part:0004
  @section[
    #:id "0004"
    #:title @%{圏論}
    @paragraph{
      @emph{圏論}は数学における対象とその間の写像の概念を抽象化した構造を調べる分野である。特に、対象の間の@emph{同型}の概念が一般的に定義され、同型こそが対象の「正しい」同一視のしかたと考えられる。しかし、例えば集合論を数学の基礎とした場合、同型な対象であっても等しいとは限らないので、それらを厳密に同一視するわけにはいかない。一方、型理論を数学の基礎とした場合、一価性公理と同様の発想で同型の型と同一視型が同値になるような条件を圏に課す余地があり、実際に多くの圏の具体例は一価性公理の下でその条件を満たす。その意味で、圏論はホモトピー型理論を基礎とするのが適切である分野の一つである。
    }
    #:subsections @list[
      (include-part "005B.rkt")
      (include-part "005J.rkt")
      (include-part "0065.rkt")
      (include-part "006D.rkt")
    ]
  ]
]

(module+ main
  (require morg/text)
  (display (->text part:0004)))
