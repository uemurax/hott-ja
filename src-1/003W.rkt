#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/nat.rkt")

(provide-part (id)
  @section[
    #:id id
    #:title @%{@${n}型}
    @paragraph{
      @ref["002N"]で型は高次グルーポイドの構造を持つと説明したが、その豊富な構造をすべて把握するのは容易ではない。@${n}次元より上の構造が自明になっているような型は@emph{@${n}型}と呼ばれ、比較的解析が容易である。
    }
    @paragraph{
      次数@${n}は@${-2}から数えるのが都合がよい。
    }
    (include-part "003X.rkt")
    @paragraph{
      @($ trunc-level)は実質@($ nat)と同じであるが、@($ nat:zero)の代わりに@($ trunc-level:-2)から数えたものである。特に、次の@emph{帰納法原理}を満たす:型の族@($ (("A" . elem-of . trunc-level) . fun-type . @universe{i}))に対して、関数@($ ("h" . elem-of . (d-fun-type ("x" . elem-of . trunc-level) ("A" . fun-apply . "x"))))を構成するためには、
      @unordered-list[
        @list-item{@($ ("a" . elem-of . ("A" . fun-apply . trunc-level:-2)))}
        @list-item{@($ ("f" . elem-of . (d-fun-type ("x" . elem-of . trunc-level) (("A" . fun-apply . "x") . fun-type . ("A" . fun-apply . @trunc-level:succ{x})))))}
      ]
      を構成すれば十分である。
    }
    (include-part "003Y.rkt")
    ;(include-part "0053.rkt")
    @paragraph{
      @($ trunc-level:-1)型は特別に@emph{命題}と呼ばれ、@ref["003Z"]でより詳しく調べる。@($ trunc-level:0)型は特別に@emph{集合}と呼ばれ、@ref["004B"]でより詳しく調べる。
    }
    @paragraph{
      @${n}型の一般的な性質をいくつか見る。まず、@${n}型はレトラクトで閉じる(@ref["0045"])。
    }
    ;(include-part "0046.rkt")
    (include-part "0045.rkt")
    @paragraph{
      @${n}型はいくつかの型の構成で閉じる。
    }
    ;(include-part "0048.rkt")
    ;(include-part "004X.rkt")
    ;(include-part "004F.rkt")
    ;(include-part "0052.rkt")
    @paragraph{
      相対的な@${n}型の概念も導入する。
    }
    ;(include-part "005Q.rkt")
    ;(include-part "005S.rkt")
    ;(include-part "005R.rkt")
    #:subsections @list[
      (include-part "003Z.rkt")
      ;(include-part "004B.rkt")
      ;(include-part "004Z.rkt")
      ;(inlcude-part "0057.rkt")
      ;(include-part "005T.rkt")
      ;(include-part "004V.rkt")
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
