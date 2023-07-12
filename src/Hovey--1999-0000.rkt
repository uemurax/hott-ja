#lang at-exp typed/racket

(require "lib/markup.rkt"
         (prefix-in b: "lib/bibliography.rkt"))

(provide-part (id)
  @b:bibliography[
    #:id id
    @b:book[
      #:author @list[@%{Mark Hovey}]
      #:title @%{Model categories}
      #:date (date 1999)
      #:publisher @%{American Mathematical Society}
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
