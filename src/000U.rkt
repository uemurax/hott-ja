#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(provide part:000U)

(define part:000U
  @section[
    #:id "000U"
    #:title @%{同値}
    @paragraph{
      同値の定義(@ref["001Q"])が妥当なものであることを見る。同値の概念にふさわしい性質として次を示す。
      @unordered-list[
        @list-item{恒等関数は同値である(@ref["0026"])}
        @list-item{同値の概念は@emph{ホモトピー不変}である(@ref["002G"])}
        @list-item{@emph{六分の二性(2-out-of-6 property)}:合成可能な関数@($ (seq "f" "g" "h"))に対して、@($ ("g" . fun-comp . "f"))と@($ ("h" . fun-comp . "g"))が同値ならば@($ (seq "f" "g" "h" (fun-comp "h" "g" "f")))も同値である(@ref["002F"])}
      ]
      さらに、関数全体のうちの同値のなすクラスはこれらの性質を満たすものの中で最小であることを示す。つまり、任意の同値はこれらの性質のみを使って得られる(@ref["002H"])。また、もう一つ重要な事実として、(関数外延性の下で)@${@is-equiv{f}}は@emph{命題}であるということがある(@ref["0044"])。命題は後に導入する概念なので今は説明しないが、関数が同値であることをどのように証明したかは気にしなくてよいということが分かる。
    }
    (include-part "002L.rkt")
    (include-part "002E.rkt")
    (include-part "002J.rkt")
    (include-part "002K.rkt")
    (include-part "002I.rkt")
    (include-part "002G.rkt")
    (include-part "002F.rkt")
    (include-part "002H.rkt")
    #:subsections @list[
      (include-part "004I.rkt")
    ]
  ])

(module+ main
  (require morg/text)
  (display (->text part:000U)))
