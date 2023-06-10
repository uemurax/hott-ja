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
        (C) 2023 @|me|
        HTML版: https://uemurax.github.io/hott-ja/index.html
        PDF版: https://uemurax.github.io/hott-ja/index.pdf
        リポジトリ: https://github.com/uemurax/hott-ja
        ライセンス: この作品は[クリエイティブ・コモンズ表示4.0国際ライセンス](http://creativecommons.org/licenses/by/4.0/)の下に提供されています。
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
