#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/lemma.rkt"
         "lib/math.rkt")

(provide-part (id)
  @lemma[
    #:id id
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("e" . elem-of . ("A" . equiv . "B")))を同値とすると、@($ (retract (seq "B" "A")))の要素を構成できる。
    }
    #:proof @proof[
      @paragraph{
        仮定@${e}から@($ ("f" . elem-of . ("A" . fun-type . "B")))と@($ ("H" . elem-of . @is-equiv{f}))を得る。任意の@($ ("y" . elem-of . "B"))に対して@($ (("H" . fun-apply . "y") . elem-of . (is-contr (fiber (seq "f" "y")))))を得るので、特に関数@($ ("G" . elem-of . (d-fun-type ("y" . elem-of . "B") (fiber (seq "f" "y")))))を得る。@ref["001A"]の要領で@${G}から関数@($ ("g" . elem-of . ("B" . fun-type . "A")))と同一視@($ ("p" . elem-of . (d-fun-type ("y" . elem-of . "B") (("f" . fun-apply . ("g" . fun-apply . "y")) . id-type . "y"))))を得る。これで要素@($ ((record-elem (seq (retract:retraction . def-eq . "f") (retract:section . def-eq . "g") (retract:id . def-eq . "p"))) . elem-of . (retract (seq "B" "A"))))を構成できた。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
