#lang at-exp typed/racket

(require morg/markup)

(provide part:000R)

(define part:000R
  @section[
    #:id "000R"
    #:title @%{識別子}
    @paragraph{
      本書ではすべての章や定理などに一意で恒久的な@emph{識別子}が割り当てられている。章番号や定理番号は本書の更新に伴って変わることがあるのに対し、識別子は変わることはない。そのため、本書の特定の箇所を参照する場合は識別子を使うことを強く推奨する。HTML版では識別子ごとのページも作成されており、@code{https://uemurax.github.io/hott-ja/<識別子>.html}からアクセスできる。PDF版では識別子ごとのページは作成していない。
    }
    @paragraph{
      ちなみに、識別子を使うというアイディアは@href["https://stacks.math.columbia.edu/"]{Stacks project}や@href["https://kerodon.net/"]{Kerodon}を参考にしている。
    }
    ])

(module+ main
  (require morg/text)
  (display (->text part:000R)))
