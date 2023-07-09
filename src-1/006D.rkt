#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/cat.rkt")

(provide-part (id)
  @section[
    #:id id
    #:title @%{前層}
    @paragraph{
      圏にとっての@emph{前層}は、群にとっての作用、環にとっての加群に相当するものである。
    }
    (include-part "006E.rkt")
    (include-part "006F.rkt")
    @paragraph{
      つまり、@${C}上の前層は@${C}の対象で添え字付けられた集合の族で、@${C}の射が右から作用しているものである。
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
      @${@yoneda{C}}が埋め込みと呼ばれるのは@ref["006V"]による。定義から、任意の対象@($ ("x" . elem-of . "C"))と@($ ("y" . elem-of . "C"))に対して@($ (((@yoneda{C} . fun-apply . "x") . fun-apply . "y") . def-eq . (cat:map . fun-apply . (seq "y" "x"))))である。特に、@($ ((cat:id . fun-apply . "x") . elem-of . (cat:map . fun-apply . (seq "x" "x"))))は@($ ((@yoneda{C} . fun-apply . "x") . fun-apply . "x"))の要素とも思える。@($ (cat:id . fun-apply . "x"))をどのように見ているかを区別するために別の表記を導入する。
    }
    (include-part "006U.rkt")
    @paragraph{
      米田の補題が主張するのは、@($ (@yoneda{C} . fun-apply . "x"))は@($ (@yoneda-gen{x} . elem-of . ((@yoneda{C} . fun-apply . "x") . fun-apply . "x")))で自由に生成された@${C}上の前層であることである。
    }
    (include-part "006T.rkt")
    (include-part "006V.rkt")
    @paragraph{
      多くの圏論的な概念は、ある前層が@emph{表現可能}であるという性質で定義される。
    }
    (include-part "0070.rkt")
    @paragraph{
      従来の圏論では、@${C}上の前層@${A}の普遍要素は「同型を除いて一意」であることが知られている。ホモトピー型理論においては、@${C}が圏と仮定して普遍要素は一意であること、つまり@${@is-repr-psh{A}}は命題であることが分かる(@ref["0073"])。
    }
    (include-part "0071.rkt")
    (include-part "0073.rkt")
  ])

(module+ main
  (require morg/text)
  (preview))
