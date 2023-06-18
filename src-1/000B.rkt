#lang at-exp typed/racket

(require "lib/markup.rkt")

(require "000K.rkt"
         "000M.rkt"
         "000N.rkt"
         "000O.rkt"
         "000W.rkt"
         "0014.rkt"
         "0015.rkt"
         "0016.rkt"
         "0017.rkt"
         "0018.rkt"
         "0019.rkt"
         "001A.rkt"
         "001B.rkt"
         "001T.rkt"
         "001U.rkt"
         "000L.rkt")

(provide part:000B)

(define part:000B
  @section[
    #:id "000B"
    #:title @%{レコード型}
    @paragraph{
      @emph{レコード型}は構造を記述するのに便利な型である。本書では、組み込み型としては単位型と対型を導入し、レコード型は記法として実現する。これは体系を単純なものに抑えるためである。
    }
    part:000K
    part:000L
    part:000M
    part:000N
    part:0014
    part:0015
    part:0016
    part:0017
    part:0018
    part:0019
    part:001A
    part:001B
    part:000O
    part:000W
    part:001T
    part:001U
  ])

(module+ main
  (require morg/text)
  (display (->text part:000B)))
