#lang morg

(require "lib/markup/theorem.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/truncation.rkt")

@theorem[
  #:id (current-id)
  @paragraph{
    一価性と関数外延性を仮定する。@${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ ("B" . elem-of . ("A" . fun-type . @universe{i})))を型の族、@($ ("n" . elem-of . trunc-level))を要素とする。任意の@($ ("x" . elem-of . "A"))に対して@($ ("B" . fun-apply . "x"))は@${n}型であると仮定する。@ref["0054"]より、帰納法で型の族@($ ("T" . elem-of . ((trunc @trunc-level:succ{n} "A") . fun-type . @universe{i})))であって、任意の@($ ("u" . elem-of . (trunc @trunc-level:succ{n} "A")))に対して@($ ("T" . fun-apply . "u"))は@${n}型であり、任意の@($ ("x" . elem-of . "A"))に対して@($ (("T" . fun-apply . (trunc:in @trunc-level:succ{n} "x")) . def-eq . ("B" . fun-apply . "x")))であるものを構成できる。@ref["004X"]と@ref["004F"]より@($ (d-pair-type ("u" . elem-of . (trunc @trunc-level:succ{n} "A")) ("T" . fun-apply . "u")))は@${@trunc-level:succ{n}}型なので、関数@($ ((abs "z" (pair (seq (trunc:in @trunc-level:succ{n} ((proj 1) "z")) ((proj 2) "z")))) . elem-of . ((d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")) . fun-type . (d-pair-type ("u" . elem-of . (trunc @trunc-level:succ{n} "A")) ("T" . fun-apply . "u")))))は関数
    @disp{
      @($ ("H" . elem-of . ((trunc @trunc-level:succ{n} (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))) . fun-type . (d-pair-type ("u" . elem-of . (trunc @trunc-level:succ{n} "A")) ("T" . fun-apply . "u")))))
    }
    を誘導する。この時、関数@${H}は同値である。
  }
  #:proof @proof[
    @paragraph{
      @($ (d-pair-type ("u" . elem-of . (trunc @trunc-level:succ{n} "A")) ("T" . fun-apply . "u")))が@($ (trunc @trunc-level:succ{n} (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))))と同じ帰納法原理を満たすことを見る。@($ ("C" . elem-of . ((d-pair-type ("u" . elem-of . (trunc @trunc-level:succ{n} "A")) ("T" . fun-apply . "u")) . fun-type . @universe{i})))を型の族とし、各@($ ("C" . fun-apply . "u"))は@${@trunc-level:succ{n}}型であると仮定する。@($ ("f" . elem-of . (d-fun-type ("z" . elem-of . (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x"))) ("C" . fun-apply . (pair (seq (trunc:in @trunc-level:succ{n} "z") ((proj 2) "z")))))))を関数とする。@($ ("D" . elem-of . (d-fun-type ("u" . elem-of . (trunc @trunc-level:succ{n} "A")) (("T" . fun-apply . "u") . fun-type . @universe{i}))))を@${C}のカリー化、@($ ("g" . elem-of . (d-fun-type ("x" . elem-of . "A") (d-fun-type ("y" . elem-of . ("B" . fun-apply . "x")) ("D" . fun-apply . (seq (trunc:in @trunc-level:succ{n} "x") "y"))))))を@${f}のカリー化とする。@ref["0048"]より各@($ (d-fun-type ("v" . elem-of . ("D" . fun-apply . "u")) ("D" . fun-apply . (seq "u" "v"))))は@${@trunc-level:succ{n}}型なので、帰納法で関数@($ ("h" . elem-of . (d-fun-type ("u" . elem-of . (trunc @trunc-level:succ{n} "A")) (d-fun-type ("v" . elem-of . ("T" . fun-apply . "u")) ("D" . fun-apply . (seq "u" "v"))))))を得る。@${h}を逆カリー化すればよい。
    }
  ]
]
