#lang at-exp typed/racket

(require "lib/markup.rkt")

(provide-part (id)
  @section[
    #:id id
    #:title @%{索引}
    @print-index[]
  ])

(module+ main
  (require morg/text)
  (preview))
