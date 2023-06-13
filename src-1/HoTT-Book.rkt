#lang at-exp typed/racket

(require morg/markup
         (prefix-in b: "lib/bibliography.rkt"))

(provide part:HoTT-Book)

(define part:HoTT-Book
  @b:bib["HoTT-Book"
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
  (display (->text part:HoTT-Book)))