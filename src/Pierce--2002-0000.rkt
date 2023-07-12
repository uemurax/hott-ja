#lang at-exp typed/racket

(require "lib/markup.rkt"
         (prefix-in b: "lib/bibliography.rkt"))

(provide-part (id)
  @b:bibliography[
    #:id id
    @b:book[
      #:author @list[@%{Benjamin C. Pierce}]
      #:title @%{Types and programming languages}
      #:date (date 2002)
      #:publisher @%{MIT Press}
    ]
  ])