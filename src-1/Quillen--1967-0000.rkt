#lang at-exp typed/racket

(require "lib/markup.rkt"
         (prefix-in b: "lib/bibliography.rkt"))

(provide-part (id)
  @b:bibliography[
    #:id id
    @b:book[
      #:author @list[@%{Daniel G. Quillen}]
      #:title @%{Homotopical algebra}
      #:date (date 1967)
      #:publisher @%{Springer}
      #:doi "doi:10.1007/BFb0097438"
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
