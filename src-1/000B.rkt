#lang at-exp typed/racket

(require morg/markup)

(provide part:000B)

(define part:000B
  @section[
    #:id "000B"
    #:title @%{レコード型}
    @paragraph{
      @emph{レコード型}は構造を記述するのに便利な型である。本書では、組み込み型としては単位型と対型を導入し、レコード型は記法として実現する。これは体系を単純なものに抑えるためである。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000B)))