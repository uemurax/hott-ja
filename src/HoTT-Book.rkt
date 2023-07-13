#lang at-exp typed/racket

(require morg/markup
         (prefix-in b: "lib/bibliography.rkt"))

(provide-part (id)
  @b:bibliography[
    #:id id
    @b:book[
      #:author @list[@%{The Univalent Foundations Program}]
      #:title @%{Homotopy Type Theory: Univalent Foundations of Mathematics}
      #:date (date 2013)
      #:address @%{Institute for Advanced Study}
      #:url "http://homotopytypetheory.org/book/"
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
