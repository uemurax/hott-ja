#lang at-exp typed/racket

(require "lib/markup.rkt"
         (prefix-in b: "lib/bibliography.rkt"))

(provide-part (id)
  @b:bibliography[
    #:id id
    @b:article[
      #:author @list[@%{Alonzo Church}]
      #:title @%{A Formulation of the Simple Theory of Types}
      #:journal-title @%{The Journal of Symbolic Logic}
      #:date (date 1940)
      #:volume @%{5}
      #:number @%{2}
      #:pages @%{56--68}
      #:doi "10.2307/2266170"
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
