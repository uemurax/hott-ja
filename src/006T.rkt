#lang morg

(require "lib/markup/theorem.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt"
         morg/eq-reasoning)

@theorem[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏、@($ ("x" . elem-of . "C"))を対象、@($ ("A" . elem-of . @presheaf-cat{C}))を前層とする。関数
    @disp{
      @($ ((abs "h" ("h" . fun-apply . @yoneda-gen{x})) . elem-of . ((cat:map . fun-apply . (seq (@yoneda{C} . fun-apply . "x") "A")) . fun-type . ("A" . fun-apply . "x"))))
    }
    は同値である。
  }
  #:proof @proof[
    @paragraph{
      射@($ ("h" . elem-of . (cat:map . fun-apply . (seq (@yoneda{C} . fun-apply . "x") "A"))))と対象@($ ("y" . elem-of . "C"))と要素@($ ("f" . elem-of . ((@yoneda{C} . fun-apply . "x") . fun-apply . "y")))に対して、同一視
      @disp{
        @eq-reasoning[
          @($ ("h" . fun-apply . "f"))
          @($ id-type/symb) @%{前圏の公理}
          @($ ("h" . fun-apply . (@yoneda-gen{x} . presheaf:act-bin . "f")))
          @($ id-type/symb) @%{前層の公理}
          @($ ("h" . fun-apply . (@yoneda-gen{x} . presheaf:act-bin . "f")))
        ]
      }
      を得るので、@${h}は@${@yoneda-gen{x}}における値のみで決まる。つまり、任意の要素@($ ("a" . elem-of . ("A" . fun-apply . "x")))に対して、@($ (fiber (seq (abs "h" ("h" . fun-apply . @yoneda-gen{x})) "a")))は命題であることが分かる。この型が要素を持つことを確認するには、@($ ((abs (seq "y" "f") ("a" . presheaf:act-bin . "f")) . elem-of . (d-fun-type ("y" . elem-of . "C") (((@yoneda{C} . fun-apply . "x") . fun-apply . "y") . fun-type . ("A" . fun-apply . "y")))))が前層の射であることを確かめればよいが、それは前層の公理から容易である。
    }
  ]
]
