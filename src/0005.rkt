#lang at-exp typed/racket

(require "lib/markup.rkt")

(provide-part (id)
  @section[
    #:id id
    #:title @%{ホモトピー論}
  ])

(module+ main
  (require morg/text)
  (preview))
