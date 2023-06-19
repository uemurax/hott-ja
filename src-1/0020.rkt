#lang at-exp typed/racket

(require "lib/markup.rkt")

(provide part:0020)

(define part:0020
  @axiom[
    #:id "0020"
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
  (display (->text part:0020)))
