#lang at-exp typed/racket

(require "lib/markup.rkt"
         (prefix-in b: "lib/bibliography.rkt"))

(provide-part (id)
  @b:bibliography[
    #:id id
    @b:article[
	  #:author @list[@%{Michael Hedberg}]
	  #:title @%{A coherence theorem for Martin-Löf's type theory}
	  #:journal-title @%{Journal of Functional Programming}
	  #:volume @%{8}
	  #:date (date 1998 7)
	  #:number @%{4}
	  #:pages @%{413--436}
	  #:doi "10.1017/S0956796898003153"
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
