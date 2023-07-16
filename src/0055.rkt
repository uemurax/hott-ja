#lang morg

(require "lib/markup/proposition.rkt"
         "lib/markup/proof.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/truncation.rkt")

@proposition[
  #:id (current-id)
  @paragraph{
    一価性と関数外延性を仮定する。@${i}を階数、@($ ("A" . elem-of . @universe{i}))を型、@($ (("a" . _ . "1") . elem-of . "A"))と@($ (("a" . _ . "2") . elem-of . "A"))を要素、@($ ("n" . elem-of . trunc-level))を要素とすると、同値@($ (((trunc:in @trunc-level:succ{n} ("a" . _ . "1")) . id-type . (trunc:in @trunc-level:succ{n} ("a" . _ . "2"))) . equiv . (trunc "n" (("a" . _ . "1") . id-type . ("a" . _ . "2")))))を構成できる。
  }
  #:proof @proof[
    @paragraph{
      @ref["0056"]を型の族@($ ((abs "x" (trunc "n" (("a" . _ . "1") . id-type . "x"))) . elem-of . ("A" . fun-type . @universe{i})))に適用すると、@ref["001S"]より、@($ (trunc @trunc-level:succ{n} (d-pair-type ("x" . elem-of . "A") (trunc "n" (("a" . _ . "1") . id-type . "x")))))が可縮であることを示せば十分である。要素@($ (("c" . _ . "1") . elem-of . (trunc @trunc-level:succ{n} (d-pair-type ("x" . elem-of . "A") (trunc "n" (("a" . _ . "1") . id-type . "x"))))))を@($ (trunc:in @trunc-level:succ{n} (pair (seq ("a" . _ . "1") (trunc:in "n" (refl ("a" . _ . "1")))))))と定義する。任意の@($ ("w" . elem-of . (trunc @trunc-level:succ{n} (d-pair-type ("x" . elem-of . "A") (trunc "n" (("a" . _ . "1") . id-type . "x"))))))に対して同一視@($ (("c" . _ . "1") . id-type . "w"))を構成する。@ref["0052"]よりこの同一視型は@${@trunc-level:succ{n}}型なので、帰納法より任意の@($ ("x" . elem-of . "A"))と@($ ("v" . elem-of . (trunc "n" (("a" . _ . "1") . id-type . "x"))))に対して同一視@($ (("c" . _ . "1") . id-type . (trunc:in @trunc-level:succ{n} (pair (seq "x" "v")))))を構成すればよい。この同一視型は定義から@${n}型なので、帰納法より任意の@($ ("x" . elem-of . "A"))と@($ ("y" . elem-of . (("a" . _ . "1") . id-type . "x")))に対して同一視@($ (("c" . _ . "1") . id-type . (trunc:in @trunc-level:succ{n} (pair (seq "x" (trunc:in "n" "y"))))))を構成すればよいが、同一視型の帰納法で@($ (refl ("c" . _ . "1")))を与えればよい。
    }
  ]
]
