#lang at-exp typed/racket

(require "lib/markup.rkt"
         (prefix-in b: "lib/bibliography.rkt"))

(provide-part (id)
  @b:bibliography[
    #:id id
    @b:article[
      #:author @list[@%{Bertrand Russell}]
      #:title @%{Mathematical Logic as Based on the Theory of Types}
      #:journal-title @%{American Journal of Mathematics}
      #:date (date 1908)
      #:volume @%{30}
      #:number @%{3}
      #:pages @%{222--262}
      #:doi "10.2307/2369948"
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
