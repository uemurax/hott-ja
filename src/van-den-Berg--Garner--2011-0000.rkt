#lang at-exp typed/racket

(require "lib/markup.rkt"
         (prefix-in b: "lib/bibliography.rkt"))

(provide-part (id)
  @b:bibliography[
    #:id id
    @b:article[
      #:author @list[@%{Benno van den Berg} @%{Richard Garner}]
      #:title @%{Types are weak ω-groupoids}
      #:journal-title @%{Proceedings of the London Mathematical Society}
      #:date (date 2011)
      #:volume @%{102}
      #:number @%{2}
      #:pages @%{370--394}
      #:doi "10.1112/plms/pdq026"
	  #:eprint @b:eprint["0812.0298v2"]
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
