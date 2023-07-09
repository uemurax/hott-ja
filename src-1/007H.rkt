#lang at-exp typed/racket

(require "lib/markup.rkt")

(define (GitHub [s : String])
  (href (format "https://github.com/~a" s)))

(define (Twitter [s : String])
  (href (format "https://twitter.com/~a" s)))

(provide-part (id)
  @section[
    #:id id
    #:title @%{貢献者}
    @paragraph{
      執筆、誤字脱字の報告などで本書の内容に直接影響を与えた者たちの一覧。
    }
    @paragraph{
      @unordered-list[
        @list-item{Taichi Uemura (@GitHub["uemurax"], @Twitter["t_uemura669101"])}
        @list-item{立腹層(@Twitter["rippukusou"])}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (preview))
