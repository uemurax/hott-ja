#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/theorem.rkt"
         "lib/math.rkt"
         "lib/math/funext.rkt")

(provide-part (id)
  @theorem[
    #:id id
    @paragraph{
      @${i}を階数とする。@${@universe{i}}が一価性を満たすならば、@${@universe{i}}のすべての関数型は関数外延性を満たす。
    }
    #:proof @proof[
      @paragraph{
        @ref["0029"]を適用する。@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族とし、各@($ ("B" . fun-apply . "x"))は可縮であると仮定する。@ref["007C"]より、関数@($ ((abs "z" ((proj 1) "z")) . elem-of . ((d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")) . fun-type . "A")))は同値である。これと@ref["007B"]より、@($ (section-of-proj (seq "A" "B")))は可縮である。したがって、@ref["007A"]と@ref["001K"]より@($ (d-fun-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))は可縮である。
      }
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
