#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/group.rkt")

(provide-part (id)
  @section[
    #:id id
    #:title @%{圏}
    (include-part "005C.rkt")
    @paragraph{
      射の型@($ (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))))は集合であると要請される。これは、群の定義(@ref["004W"])において@($ group:carrier)は集合としたのと同様である。対して、@($ cat:obj)は集合とは限らない。
    }
    (include-part "005D.rkt")
    ;(include-part "006H.rkt")
    ;(include-part "006N.rkt")
    @paragraph{
      前圏@${C}の対象の間には、同一視型の他に@emph{同型}という同一視の概念が考えらる。
    }
    ;(include-part "005E.rkt")
    ;(include-part "005G.rkt")
    ;(include-part "005H.rkt")
    ;(include-part "005F.rkt")
    @paragraph{
      同型の基本性質は次のようにまとめられる。
    }
    ;(include-part "006X.rkt")
    @paragraph{
      @emph{圏}とは、前圏であって対象の間の同型の型と同一視型が同値になるようなものである。
    }
    ;(include-part "005I.rkt")
    @paragraph{
      @${C}を圏とすると、恒等射は同型なので@ref["001S"]を適用できて、同値
      @disp{
        @($ (d-fun-type (("x" . _ . "1") . elem-of . "C") (d-fun-type (("x" . _ . "2") . elem-of . "C") ((("x" . _ . "1") . id-type . ("x" . _ . "2")) . equiv . (("x" . _ . "1") . cat:iso . ("x" . _ . "2"))))))
      }
      を得る。逆に、前圏@${C}が圏であることを示すにはこのような同値を構成すれば十分である。
    }
    @paragraph{
      圏の典型例として、@${@set-cat{i}} (@ref["006H"])が圏であることを見る。
    }
    ;(include-part "006I.rkt")
    ;(include-part "006J.rkt")
  ])

(module+ main
  (require morg/text)
  (preview))
