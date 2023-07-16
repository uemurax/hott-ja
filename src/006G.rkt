#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/proposition.rkt"
         "lib/math/logic.rkt")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "ぜんそうのしゃ"]{前層の射}
  ]
  @paragraph{
    @${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏、@($ ("A" . elem-of . @presheaf{C}))と@($ ("B" . elem-of . @presheaf{C}))を前層とする。型@($ ((presheaf-hom (seq "A" "B")) . elem-of . @universe{i}))を
    @disp{
      @($ (prop-compr ("h" . elem-of . (d-fun-type (implicit ("x" . elem-of . "C")) (("A" . fun-apply . "x") . fun-type . ("B" . fun-apply . "x")))) (forall (seq ("x" . _ . "1") ("x" . _ . "2")) (forall ("f" . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) (forall ("a" . elem-of . ("A" . fun-apply . ("x" . _ . "2"))) (("h" . fun-apply . ("a" . presheaf:act-bin . "f")) . id-type . (("h" . fun-apply . "a") . presheaf:act-bin . "f")))))))
    }
    と定義する。@($ (presheaf-hom (seq "A" "B")))の要素を@dfn{前層の射(morphism of presheaves)}と呼ぶ。
  }
]
