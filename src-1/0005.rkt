#lang at-exp typed/racket

(require morg/markup)

(provide part:0005)

@define[part:0005
  @section[
    #:id "0005"
    #:title @%{ホモトピー論}
  ]
]

(module+ main
  (require morg/text)
  (display (->text part:0005)))
