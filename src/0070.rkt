#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/cat.rkt"
         "lib/math/presheaf.rkt"
         "lib/math/logic.rkt")

(provide-part (id)
  @definition[
    #:id id
    #:indexes @list[
      @index[#:key "ひょうげんかのう"]{表現可能}
      @index[#:key "ふへんようそ"]{普遍要素}
    ]
    @paragraph{
      @${i}を階数、@($ ("C" . elem-of . @precat{i}))を前圏、@($ ("A" . elem-of . @presheaf{C}))を前層とする。型@($ (@is-repr-psh{A} . elem-of . @universe{i}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (is-repr-psh:obj . elem-of . "C"))}
        @list-item{@($ (is-repr-psh:elem . elem-of . ("A" . fun-apply . is-repr-psh:obj)))}
        @list-item{@($ (blank . elem-of . (forall ("x" . elem-of . "C") (is-equiv (abs ("f" . elem-of . (cat:map . fun-apply . (seq "x" is-repr-psh:obj))) (is-repr-psh:elem . presheaf:act-bin . "f"))))))}
      ]
      @${@is-repr-psh{A}}の要素がある時、@${A}は@dfn{表現可能(representable)}であると言う。また、@${@is-repr-psh{A}}の要素のことを@${A}の@dfn{普遍要素(universal element)}と呼ぶ。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
