#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/axiom.rkt")

(provide-part (id)
  @axiom[
    #:id id
    #:title @%{関数外延性公理}
    #:indexes @list[
      @index[#:key "かんすうがいえんせいこうり"]{関数外延性公理}
    ]
    @paragraph{
      @dfn{関数外延性公理(function extensionality axiom)}はすべての関数型が関数外延性を満たすことを要請する。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
