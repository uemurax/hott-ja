#lang at-exp typed/racket

(require "lib/markup.rkt"
         (prefix-in b: "lib/bibliography.rkt"))

(provide part:Streicher--1993-0000)

(define part:Streicher--1993-0000
  @b:bibliography[
    #:id "Streicher--1993-0000"
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
  (display (->text part:Streicher--1993-0000)))
