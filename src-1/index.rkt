#lang at-exp typed/racket

(require morg/markup)

(provide part:index)

(define me @%{上村 太一})

@define[part:index
  @document[
    #:id "index"
    #:title @%{ホモトピー型理論}
    #:author @list[me]
    #:contents @%[
      @paragraph{
        @unordered-list[
          @list-item{(C) 2023 @|me|}
          @list-item{HTML版: @href["https://uemurax.github.io/hott-ja/index.html"]}
          @list-item{PDF版: @href["https://uemurax.github.io/hott-ja/index.pdf"]}
          @list-item{リポジトリ: @href["https://github.com/uemurax/hott-ja"]}
          @list-item{ライセンス: この作品は@href["https://creativecommons.org/licenses/by/4.0/"]{クリエイティブ・コモンズ表示4.0国際ライセンス}の下に提供されています。}
        ]
      }
    ]
  ]
]

(module+ main
  (require morg/latex
           morg/html
           "config.rkt")
  (define dst-dir
    (build-path (current-directory) "_site"))
  (define doc part:index)
  (->html/publish doc dst-dir)
  (->latex/publish #:config latex-config doc dst-dir))
