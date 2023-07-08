#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/level.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/logic.rkt"
         "lib/math/set.rkt")

(provide-part (id)
  @definition[
    #:id id
    #:indexes @list[
      @index[#:key "ぜんそう"]{前層}
    ]
    @paragraph{
      @${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏とする。型@($ (@presheaf{C} . elem-of . @universe{@level:succ{i}}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (presheaf:carrier . elem-of . (("C" . record-field . cat:obj) . fun-type . @universe{i})))}
        @list-item{@($ (presheaf:act . elem-of . (d-fun-type (implicit (seq ("x" . _ . "1") ("x" . _ . "2"))) ((presheaf:carrier . fun-apply . ("x" . _ . "2")) . fun-type . ((cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2"))) . fun-type . (presheaf:carrier . fun-apply . ("x" . _ . "1")))))))}
        @list-item{@($ (blank . elem-of . (forall ("x" . elem-of . "C") (is-set (presheaf:carrier . fun-apply . "x")))))}
        @list-item{@($ (blank . elem-of . (forall ("x" . elem-of . "C") (forall ("a" . elem-of . (presheaf:carrier . fun-apply . "x")) ((presheaf:act . fun-apply . (seq "a" (cat:id . fun-apply . "x"))) . id-type . "a")))))}
        @list-item{@($ (blank . elem-of . (forall (seq ("x" . _ . "1") ("x" . _ . "2") ("x" . _ . "3")) (forall (("f" . _ . "1") . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "1") ("x" . _ . "2")))) (forall (("f" . _ . "2") . elem-of . (cat:map . fun-apply . (seq ("x" . _ . "2") ("x" . _ . "3")))) (forall ("a" . elem-of . (presheaf:carrier . fun-apply . ("x" . _ . "3"))) ((presheaf:act . fun-apply . (seq "a" (("f" . _ . "2") . cat:comp-bin . ("f" . _ . "1")))) . id-type . (presheaf:act . fun-apply . (seq (presheaf:act . fun-apply . (seq "a" ("f" . _ . "2"))) ("f" . _ . "1"))))))))))}
      ]
      @${@presheaf{C}}の要素を@${C}上の@dfn{前層(presheaf)}と呼ぶ。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
