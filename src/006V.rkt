#lang morg

(require "lib/markup/corollary.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/functor.rkt")

@corollary[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏とする。米田埋め込み@($ (@yoneda{C} . elem-of . (functor (seq "C" @presheaf-cat{C}))))は充満忠実である。
  }
  #:proof @proof[
    @paragraph{
      @($ (("x" . _ . "1") . elem-of . "C"))と@($ (("x" . _ . "2") . elem-of . "C"))を対象とする。関数@($ ((abs "f" (@yoneda{C} . fun-apply . "f")) . elem-of . ((cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . fun-type . (cat:map . fun-apply . (seq (@yoneda{C} . fun-apply . ("x" . _ . "1")) (@yoneda{C} . fun-apply . ("x" . _ . "2")))))))と@($ ((abs "h" ("h" . fun-apply . (yoneda-gen ("x" . _ . "1")))) . elem-of . ((cat:map . fun-apply . (seq (@yoneda{C} . fun-apply . ("x" . _ . "1")) (@yoneda{C} . fun-apply . ("x" . _ . "2")))) . fun-type . ((@yoneda{C} . fun-apply . ("x" . _ . "2")) . fun-apply . ("x" . _ . "1")))))の合成は@($ (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))))上の恒等関数と同一であることが分かる。よって、@ref["002E"]と@ref["006T"]から@($ (abs "f" (@yoneda{C} . fun-apply . "f")))は同値である。
    }
  ]
]
