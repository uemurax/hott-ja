#lang at-exp typed/racket

(require "lib/markup.rkt"
         (prefix-in b: "lib/bibliography.rkt"))

(provide-part (id)
  @b:bibliography[
    #:id id
    @b:article[
	  #:author @list[@%{Peter LeFanu Lumsdaine}]
	  #:title @%{Weak ω-categories from intensional type theory}
	  #:journal-title @%{Logical Methods in Computer Science}
      #:date (date 2010 9 17)
	  #:volume @%{6}
      #:number @%{3}
      #:doi "10.2168/lmcs-6(3:24)2010"
      #:eprint @b:eprint["0812.0409v4"]
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
