#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt"
         "lib/math/logic.rkt"
         "lib/math/level.rkt"
         "lib/math/empty.rkt"
         "lib/math/coproduct.rkt"
         "lib/math/n-type.rkt"
         "lib/math/truncation.rkt")

@notation[
  #:id (current-id)
  @paragraph{
    @${i}を階数とする。
    @unordered-list[
      @list-item{型@($ (logic-true . elem-of . (universe level:zero)))を@($ unit-type)と定義する。}
      @list-item{型@($ ("P" . elem-of . @universe{i}))と@($ ("Q" . elem-of . @universe{i}))に対して、型@($ (("P" . logic-and . "Q") . elem-of . @universe{i}))を@($ ("P" . pair-type . "Q"))と定義する。}
      @list-item{型@($ (logic-false . elem-of . (universe level:zero)))を@($ empty-type)と定義する。}
      @list-item{型@($ ("P" . elem-of . @universe{i}))と@($ ("Q" . elem-of . @universe{i}))に対して、型@($ (("P" . logic-or . "Q") . elem-of . @universe{i}))を@($ (trunc trunc-level:-1 ("P" . coproduct-type . "Q")))と定義する。}
      @list-item{型@($ ("P" . elem-of . @universe{i}))と@($ ("Q" . elem-of . @universe{i}))に対して、型@($ (("P" . logic-impl . "Q") . elem-of . @universe{i}))を@($ ("P" . fun-type . "Q"))と定義する。}
      @list-item{型@($ ("P" . elem-of . @universe{i}))に対して、型@($ (@logic-neg{P} . elem-of . @universe{i}))を@($ ("P" . logic-impl . logic-false))と定義する。}
      @list-item{型@($ ("P" . elem-of . @universe{i}))と@($ ("Q" . elem-of . @universe{i}))に対して、型@($ (("P" . logic-equiv . "Q") . elem-of . @universe{i}))を@($ (("P" . logic-impl . "Q") . logic-and . ("Q" . logic-impl . "P")))と定義する。}
      @list-item{型@($ ("A" . elem-of . @universe{i}))と型の族@($ ("P" . elem-of . ("A" . fun-type . @universe{i})))に対して、型@($ ((forall ("x" . elem-of . "A") ("P" . fun-apply . "x")) . elem-of . @universe{i}))を@($ (d-fun-type ("x" . elem-of . "A") ("P" . fun-apply . "x")))と定義する。}
      @list-item{型@($ ("A" . elem-of . @universe{i}))と型の族@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))に対して、型@($ ((exists ("x" . elem-of . "A") ("B" . fun-apply . "x")) . elem-of . @universe{i}))を@($ (trunc trunc-level:-1 (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))と定義する。}
    ]
    これらの記法は@${P}や@${Q}が命題である場合に使い、結果も命題であることが分かる。
  }
]
