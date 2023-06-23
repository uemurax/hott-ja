#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/proposition.rkt"
         "lib/math.rkt")

(provide-part (id)
  @proposition[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。@${f}が同値ならば、関数@($ ("g" . elem-of . ("B" . fun-type . "A")))と@($ ("h" . elem-of . ("B" . fun-type . "A")))とホモトピー@($ ("p" . elem-of . (("f" . fun-comp . "g") . homotopy . @id-fun{B})))と@($ ("q" . elem-of . (("h" . fun-comp . "f") . homotopy . @id-fun{A})))を構成できる。
    }
    #:proof @proof[
      @paragraph{
        @${f}が同値であると仮定する。関数@($ ("G" . elem-of . (d-fun-type ("y" . elem-of . "B") (fiber (seq "f" "y")))))と同一視@($ ("P" . elem-of . (d-fun-type ("y" . elem-of . "B") (d-fun-type ("z" . elem-of . (fiber (seq "f" "y"))) (("G" . fun-apply . "y") . id-type . "z")))))を得る。@($ ("g" . def-eq . (abs "y" (("G" . fun-apply . "y") . record-field . fiber:elem))))と@($ ("p" . def-eq . (abs "y" (("G" . fun-apply . "y") . record-field . fiber:id))))と定義する。@($ ("r" . elem-of . (d-fun-type ("x" . elem-of . "A") (fiber (seq "f" ("f" . fun-apply . "x"))))))を@($ ("r" . def-eq . (abs "x" (record-elem (seq (fiber:elem . def-eq . "x") (fiber:id . def-eq . (refl ("f" . fun-apply . "x"))))))))と定義する。@($ ("h" . def-eq . "g"))と定義し、@($ ("q" . def-eq . (abs "x" (fun-apply-id (seq (abs "z" ("z" . record-field . fiber:id)) ("P" . fun-apply . (seq ("f" . fun-apply . "x") ("r" . fun-apply . "x"))))))))と定義すればよい。
      }
    ]
  ])

(module+ main
 (require morg/text)
 (preview))
