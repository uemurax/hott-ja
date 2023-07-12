#lang at-exp typed/racket

(require morg/markup)

(require "0000.rkt"
         "0001.rkt"
         "0002.rkt"
         "0003.rkt"
         "0004.rkt"
         "0005.rkt"
         "007F.rkt"
         "007E.rkt")

(define me @%{上村 太一})

(provide-part (id)
  @document[
    #:id id
    #:title @%{ホモトピー型理論}
    #:author @list[me]
    #:contents @%[
      @paragraph{
        @unordered-list[
          @list-item{© 2023 @|me|}
          @list-item{HTML版: @href["https://uemurax.github.io/hott-ja/index.html"]}
          @list-item{PDF版: @href["https://uemurax.github.io/hott-ja/index.pdf"]}
          @list-item{リポジトリ: @href["https://github.com/uemurax/hott-ja"]}
          @list-item{ライセンス: この作品は@href["https://creativecommons.org/licenses/by/4.0/"]{クリエイティブ・コモンズ表示4.0国際ライセンス}の下に提供されています。}
        ]
      }
    ]
    #:front @list[
      (include-part "007H.rkt")
    ]
    part:0000
    part:0001
    part:0002
    part:0003
    (include-part "003W.rkt")
    part:0005
    part:0004
    #:back @list[
      part:007E
      part:007F
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
