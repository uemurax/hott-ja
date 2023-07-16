#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt")

@exercise[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏とする。
    @ordered-list[
      @list-item{前層@($ ("A" . elem-of . @presheaf{C}))に対して、前層の射@($ (@id-presheaf-hom{A} . elem-of . (presheaf-hom (seq "A" "A"))))を@($ (abs "x" (id-fun ("A" . fun-apply . "x"))))と定義する。これが前層の射の公理を満たすことを確かめよ。}
      @list-item{前層@($ (("A" . _ . "1") . elem-of . @presheaf{C}))と@($ (("A" . _ . "2") . elem-of . @presheaf{C}))と@($ (("A" . _ . "3") . elem-of . @presheaf{C}))と前層の射@($ (("f" . _ . "1") . elem-of . (presheaf-hom (seq ("A" . _ . "1") ("A" . _ . "2")))))と@($ (("f" . _ . "2") . elem-of . (presheaf-hom (seq ("A" . _ . "2") ("A" . _ . "3")))))に対して、前層の射@($ ((("f" . _ . "2") . presheaf-hom-comp . ("f" . _ . "1")) . elem-of . (presheaf-hom (seq ("A" . _ . "1") ("A" . _ . "3")))))を@($ (abs "x" ((("f" . _ . "2") . fun-apply/implicit . "x") . fun-comp . (("f" . _ . "1") . fun-apply/implicit . "x"))))と定義する。これが前層の射の公理を満たすことを確かめよ。}
    ]
  }
]
