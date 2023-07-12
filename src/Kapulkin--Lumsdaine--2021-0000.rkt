#lang at-exp typed/racket

(require "lib/markup.rkt"
         (prefix-in b: "lib/bibliography.rkt"))

(provide-part (id)
  @b:bibliography[
    #:id id
    @b:article[
      #:author @list[@%{Krzysztof Kapulkin} @%{Peter LeFanu Lumsdaine}]
      #:title @%{The simplicial model of univalent foundations (after Voevodsky)}
      #:journal-title @%{Journal of the European Mathematical Society (JEMS)}
      #:date (date 2021)
      #:volume @%{23}
      #:number @%{6}
      #:pages @%{2071--2126}
      #:doi "10.4171/JEMS/1050"
      #:eprint @b:eprint["1211.2851v5"]
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
