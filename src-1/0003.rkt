#lang at-exp typed/racket

(require "lib/markup.rkt")

(provide part:0003)

@define[part:0003
  @section[
    #:id "0003"
    #:title @%{高次帰納的型}
  ]
]

(module+ main
  (require morg/text)
  (display (->text part:0003)))
