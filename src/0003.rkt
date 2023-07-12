#lang at-exp typed/racket

(require "lib/markup.rkt")

(provide-part (id)
  @section[
    #:id id
    #:title @%{高次帰納的型}
  ])

(module+ main
  (require morg/text)
  (preview))
