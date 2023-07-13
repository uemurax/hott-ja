#lang at-exp typed/racket

(require "lib/markup.rkt"
         (prefix-in b: "lib/bibliography.rkt"))

(provide-part (id)
  @b:bibliography[
    #:id id
    @b:thesis[
      #:author @list[@%{Thomas Streicher}]
      #:title @%{Investigations into Intensional Type Theory}
      #:type @%{Habilitation Thesis}
      #:institution @%{Ludwig-Maximilians-Universität München}
      #:date (date 1993)
      #:url "https://www2.mathematik.tu-darmstadt.de/~streicher/HabilStreicher.pdf"
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
