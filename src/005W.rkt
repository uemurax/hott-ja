#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/markup/remark.rkt"
         "lib/math.rkt")

(provide-part (id)
  @remark[
    #:id id
    @paragraph{
      @ref["005V"]の意味での@${n}連結関数は古典的なホモトピー論における@($ ("n" . + . "1"))連結写像に対応するものである。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
