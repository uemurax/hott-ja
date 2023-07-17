#lang morg

(require "lib/markup/notation.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt")

@notation[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏、@($ ("x" . elem-of . "C"))を対象とする。要素@($ (@yoneda-gen{x} . elem-of . ((@yoneda{C} . fun-apply . "x") . fun-apply . "x")))を@($ (cat:id . fun-apply . "x"))と定義する。
  }
]