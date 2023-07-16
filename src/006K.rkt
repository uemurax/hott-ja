#lang morg

(require "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/level.rkt")

@definition[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏とする。前圏@($ (@presheaf-cat{C} . elem-of . @universe{@level:succ{i}}))を次のように定義する。
    @unordered-list[
      @list-item{@($ (cat:obj . def-eq . @presheaf{C}))}
      @list-item{@($ (cat:map . def-eq . (abs (seq "A" "B") (presheaf-hom (seq "A" "B")))))}
      @list-item{恒等射と合成は@ref["006L"]の通りである。}
      @list-item{前圏の公理は関数外延性から分かる。}
    ]
  }
]
