#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/lemma.rkt"
         "lib/math.rkt")

(provide-part (id)
  @lemma[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("r" . elem-of . (retract (seq "A" "B"))))を要素、@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))を要素とすると、@($ (retract (seq (("a" . _ . "1") . id-type . ("a" . _ . "2")) ((("r" . record-field . retract:section) . fun-apply . ("a" . _ . "1")) . id-type . (("r" . record-field . retract:section) . fun-apply . ("a" . _ . "2"))))))の要素を構成できる。
    }
    #:proof @proof[
      @paragraph{
        @($ ("f" . def-eq . ("r" . record-field . retract:section)))と@($ ("g" . def-eq . ("r" . record-field . retract:retraction)))と@($ ("p" . def-eq . ("r" . record-field . retract:id)))と定義する。@($ ("F" . elem-of . ((("a" . _ . "1") . id-type . ("a" . _ . "2")) . fun-type . (("f" . fun-apply . ("a" . _ . "1")) . id-type . ("f" . fun-apply . ("a" . _ . "2"))))))を@($ (fun-apply-id "f"))と定義する。@($ ("G" . elem-of . ((("f" . fun-apply . ("a" . _ . "1")) . id-type . ("f" . fun-apply . ("a" . _ . "2"))) . fun-type . (("a" . _ . "1") . id-type . ("a" . _ . "2")))))を@($ (abs "q" ((("p" . fun-apply . ("a" . _ . "2")) . id-comp . (fun-apply-id (seq "g" "q"))) . id-comp . (id-inv ("p" . fun-apply . ("a" . _ . "1"))))))と定義する。@($ (d-fun-type ("z" . elem-of . (("a" . _ . "1") . id-type . ("a" . _ . "2"))) (("G" . fun-apply . ("F" . fun-apply . "z")) . id-type . "z")))を示すには、同一視型の帰納法により@($ (("G" . fun-apply . ("F" . fun-apply . (refl ("a" . _ . "1")))) . id-type . (refl ("a" . _ . "1"))))を示せばよいが、@($ (("G" . fun-apply . ("F" . fun-apply . (refl ("a" . _ . "1")))) . def-eq . (id-comp ("p" . fun-apply . ("a" . _ . "1")) (id-inv ("p" . fun-apply . ("a" . _ . "1"))))))なので@ref["0047"]を適用すればよい。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
