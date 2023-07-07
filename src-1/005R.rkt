#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         morg/eq-reasoning)

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。
      @ordered-list[
        @list-item[#:id "0000"]{型@($ (is-trunc-map (seq trunc-level:-2 "f")))と@${@is-equiv{f}}は論理的に同値である。}
        @list-item[#:id "0001"]{要素@($ ("n" . elem-of . trunc-level))に対して、次の型は論理的に同値である。
          @unordered-list[
            @list-item{@($ (is-trunc-map (seq @trunc-level:succ{n} "f")))}
            @list-item{@($ (d-fun-type (seq ("x" . _ . "1") ("x" . _ . "2")) (is-trunc-map (seq "n" ((fun-apply-id "f") . fun-apply/implicit . (seq ("x" . _ . "1") ("x" . _ . "2")))))))}
          ]
        }
      ]
    }
    #:proof @proof[
      @paragraph{
        @anchor-ref[#:node "005R" #:anchor "0000"]は定義から自明である。
      }
      @paragraph{
        @anchor-ref[#:node "005R" #:anchor "0001"]は次のように分かる。
        @disp{
          @eq-reasoning[
            @($ (is-trunc-map (seq @trunc-level:succ{n} "f")))
            @($ log-equiv/symb) @%{定義}
            @($ (d-fun-type ("y" . elem-of . "B") (d-fun-type (("z" . _ . "1") . elem-of . (fiber (seq "f" "y"))) (d-fun-type (("z" . _ . "2") . elem-of . (fiber (seq "f" "y"))) (is-trunc (seq "n" (("z" . _ . "1") . id-type . ("z" . _ . "2"))))))))
            @($ log-equiv/symb) @%{並び替え}
            @($ (d-fun-type (("x" . _ . "1") . elem-of . "A") (d-fun-type ("y" . elem-of . "B") (d-fun-type (("p" . _ . "1") . elem-of . (("f" . fun-apply . ("x" . _ . "1")) . id-type . "y")) (d-fun-type (("z" . _ . "2") . elem-of . (fiber (seq "f" "y"))) (is-trunc (seq "n" ((record-elem (seq (fiber:elem . def-eq . ("x" . _ . "1")) (fiber:id . def-eq . ("p" . _ . "1")))) . id-type . ("z" . _ . "2")))))))))
            @($ log-equiv/symb) @%{@($ ("p" . _ . "1"))についての帰納法}
            @($ (d-fun-type (("x" . _ . "1") . elem-of . "A") (d-fun-type (("z" . _ . "2") . elem-of . (fiber (seq "f" ("f" . fun-apply . ("x" . _ . "1"))))) (is-trunc (seq "n" ((record-elem (seq (fiber:elem . def-eq . ("x" . _ . "1")) (fiber:id . def-eq . (refl ("f" . fun-apply . ("x" . _ . "1")))))) . id-type . ("z" . _ . "2")))))))
            @($ log-equiv/symb) @%{@ref["005S"]}
            @($ (d-fun-type (("x" . _ . "1") . elem-of . "A") (d-fun-type (("z" . _ . "2") . elem-of . (fiber (seq "f" ("f" . fun-apply . ("x" . _ . "1"))))) (is-trunc (seq "n" (fiber (seq (fun-apply-id "f") ((proj 2) ("z" . _ . "2")))))))))
            @($ log-equiv/symb) @%{並び替え}
            @($ (d-fun-type (seq ("x" . _ . "2") ("x" . _ . "1")) (d-fun-type ("p" . elem-of . (("f" . fun-apply . ("x" . _ . "2")) . id-type . ("f" . fun-apply . ("x" . _ . "1")))) (is-trunc (seq "n" (fiber (seq (fun-apply-id "f") "p")))))))
            @($ log-equiv/symb) @%{定義}
            @($ (d-fun-type (seq ("x" . _ . "2") ("x" . _ . "1")) (is-trunc-map (seq "n" ((fun-apply-id "f") . fun-apply/implicit . (seq ("x" . _ . "2") ("x" . _ . "1")))))))
          ]
        }
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
