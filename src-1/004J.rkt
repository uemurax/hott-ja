#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/definition.rkt"
         "lib/math.rkt"
         "lib/math/biinv.rkt")

(provide-part (id)
  @definition[
    #:id id
    #:indexes @list[
      @index[#:key "りょうがわかぎゃく"]{両側可逆}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))を関数とする。
      @unordered-list[
        @list-item{型@($ (@linv{f} . elem-of . @universe{i}))を@($ (record-type (seq (linv:inv . elem-of . ("B" . fun-type . "A")) (linv:id . elem-of . ((linv:inv . fun-comp . "f") . homotopy . @id-fun{A})))))と定義する。}
        @list-item{型@($ (@rinv{f} . elem-of . @universe{i}))を@($ (record-type (seq (rinv:inv . elem-of . ("B" . fun-type . "A")) (rinv:id . elem-of . (("f" . fun-comp . rinv:inv) . homotopy . @id-fun{B})))))と定義する。}
        @list-item{型@($ (@is-biinv{f} . elem-of . @universe{i}))を@($ (record-type (seq (is-biinv:linv . elem-of . @linv{f}) (is-biinv:rinv . elem-of . @rinv{f}))))と定義する。}
      ]
      @${@is-biinv{f}}の要素がある時、@${f}は@dfn{両側可逆(biinvertible)}であると言う。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
