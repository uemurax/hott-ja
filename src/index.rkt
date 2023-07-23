#lang morg

(define me @%{上村 太一})

@document[
  #:id (current-id)
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
  (include-part "0000.rkt")
  (include-part "0001.rkt")
  (include-part "0002.rkt")
  (include-part "003W.rkt")
  (include-part "0003.rkt")
  (include-part "0005.rkt")
  (include-part "0004.rkt")
  #:back @list[
    (include-part "007E.rkt")
    (include-part "007F.rkt")
  ]
]
