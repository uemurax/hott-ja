#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/example.rkt"
         "lib/math.rkt"
         "lib/math/id.rkt")

(provide-part (id)
  @example[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。
      @ordered-list[
        @list-item{要素@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))と@($ (("a" . _ . "3") . elem-of . "A"))と同一視@($ (("p" . _ . "1") . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))と@($ (("p" . _ . "2") . elem-of . (("a" . _ . "2") . id-type . ("a" . _ . "3"))))に対して、同一視@($ ((fun-apply-id-comp (seq "f" ("p" . _ . "2") ("p" . _ . "1"))) . elem-of . ((fun-apply-id (seq "f" (("p" . _ . "2") . id-comp . ("p" . _ . "1")))) . id-type . ((fun-apply-id (seq "f" ("p" . _ . "2"))) . id-comp . (fun-apply-id "f" ("p" . _ . "1"))))))を構成できる。実際、@($ ((fun-apply-id-comp (seq "f" ("p" . _ . "2") (refl ("a" . _ . "1")))) . def-eq . (refl (fun-apply-id (seq "f" ("p" . _ . "2"))))))と定義すればよい。}
        @list-item{要素@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))と同一視@($ ("p" . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))))に対して、同一視@($ ((fun-apply-id-inv (seq "f" "p")) . elem-of . ((fun-apply-id (seq "f" @id-inv{p})) . id-type . (id-inv (fun-apply-id (seq "f" "p"))))))を構成できる。実際、@($ ((fun-apply-id-inv (seq "f" (refl ("a" . _ . "1")))) . def-eq . (refl blank)))と定義すればよい。}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (preview))
