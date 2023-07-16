#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/functor.rkt"
         "lib/math/logic.rkt")

@definition[
  #:id (current-id)
  #:indexes @list[
    @index[#:key "じゅうまんちゅうじつ"]{充満忠実}
    @index[#:key "ほんしつてきぜんしゃ"]{本質的全射}
    @index[#:key "じゃくけんどうち"]{弱圏同値}
  ]
  @paragraph{
    @${i}を階数、@($ ("C" . elem-of . @precat{i}))と@($ ("D" . elem-of . @precat{i}))を前圏、@($ ("F" . elem-of . (functor (seq "C" "D"))))を関手とする。
    @unordered-list[
      @list-item{型@($ (@is-fully-faithful{F} . elem-of . @universe{i}))を@($ (forall (seq ("x" . _ . "1") ("x" . _ . "2")) (is-equiv (("F" . record-field . functor:map) . fun-apply/implicit . (seq ("x" . _ . "1") ("x" . _ . "2"))))))と定義する。@${@is-fully-faithful{F}}の要素がある時、@${F}は@dfn{充満忠実(fully faithful)}であると言う。}
      @list-item{型@($ (@is-ess-surj{F} . elem-of . @universe{i}))を@($ (forall ("y" . elem-of . "D") (exists ("x" . elem-of . "C") (("F" . fun-apply . "x") . cat:iso . "y"))))と定義する。@${@is-ess-surj{F}}の要素がある時、@${F}は@dfn{本質的全射(essentially surjective)}であると言う。}
      @list-item{型@($ (@is-weak-cat-equiv{F} . elem-of . @universe{i}))を@($ (@is-fully-faithful{F} . logic-and . @is-ess-surj{F}))と定義する。@${@is-weak-cat-equiv{F}}の要素がある時、@${F}は@dfn{弱圏同値(weak categorical equivalence)}であると言う。}
    ]
  }
]
