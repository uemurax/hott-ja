#lang at-exp typed/racket

(require "lib/markup.rkt"
         (prefix-in b: "lib/bibliography.rkt"))

(provide-part (id)
  @b:bibliography[
    #:id id
    @b:book[
      #:author @list[@%{J. Lambek} @%{P. J. Scott}]
      #:title @%{Introduction to higher order categorical logic}
      #:date (date 1986)
      #:publisher @%{Cambridge University Press}
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
