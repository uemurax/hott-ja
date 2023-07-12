#lang at-exp typed/racket

(require "lib/markup.rkt"
         (prefix-in b: "lib/bibliography.rkt"))

(provide-part (id)
  @b:bibliography[
    #:id id
    @b:article[
      #:author @list[@%{Per Martin-Löf}]
      #:title @%{An Intuitionistic Theory of Types: Predicative Part}
      #:journal-title @%{Studies in Logic and the Foundations of Mathematics}
      #:date (date 1975)
      #:volume @%{80}
      #:pages @%{73--118}
      #:doi "10.1016/S0049-237X(08)71945-1"
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
