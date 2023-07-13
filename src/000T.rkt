#lang at-exp typed/racket

(require "lib/math.rkt"
         "lib/markup/definition.rkt"
         "lib/markup.rkt")

(provide-part (id)
  @definition[
    #:id id
    #:indexes @list[
      @index[#:key "かしゅく"]{可縮}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))を型とする。型@($ (@is-contr{A} . elem-of . @universe{i}))を次のレコード型と定義する。
      @unordered-list[
        @list-item{@($ (center . elem-of . "A"))}
        @list-item{@($ (contraction . elem-of . (d-fun-type ("x" . elem-of . "A") (center . id-type . "x"))))}
      ]
      @${@is-contr{A}}の要素がある時、@${A}は@dfn{可縮(contractible)}であると言う。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
