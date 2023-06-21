#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math/univalence.rkt"
         "lib/math.rkt")

(require "000Y.rkt"
         "0026.rkt"
         "000Z.rkt")

(provide part:000X)

(define part:000X
  @section[
    #:id "000X"
    #:title @%{一価性}
    @paragraph{
      同値@($ ("A" . equiv . "B"))は型@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))の「正しい」同一視のしかたと考えられる。つまり、同値@($ (("A" . id-type . "B") . equiv . ("A" . equiv . "B")))が期待される。しかし、関数@($ (("A" . equiv . "B") . fun-type . ("A" . id-type . "B")))は宇宙、関数型、対型、同一視型の規則からは導出できない。実際、型を従来の意味での集合と解釈するモデルを考えると、@($ ("A" . equiv . "B"))は@${A}から@${B}への全単射のなす集合と解釈される一方、@($ ("A" . id-type . "B"))は@${A}と@${B}が等しい時に限り(一つだけ)要素を持つような集合と解釈される。異なる集合の間にも全単射は存在する場合があり、その時には関数@($ (("A" . equiv . "B") . fun-type . ("A" . id-type . "B")))は存在しない。
    }
    @paragraph{
      @emph{一価性公理}は同値@($ (("A" . id-type . "B") . equiv . ("A" . equiv . "B")))を導出する公理である。先に説明したように、この同値は型理論の集合論的解釈とは相反するものである。一価性公理の下では、型は空間のホモトピー型のように振る舞う。その意味で、一価性公理は型理論をホモトピー論的なものに強制する公理と言える。
    }
    part:0026
    part:000Y
    @paragraph{
      @ref["0026"]から@ref["001S"]を適用できて、@${@universe{i}}が一価性を満たす時、任意の型@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))に対して同値@($ (("A" . id-type . "B") . equiv . ("A" . equiv . "B")))を構成できる。
    }
    part:000Z
    @paragraph{
      ここで公理という言葉を使ったが、規則と公理に本質的な違いは無い。つまり、@ref["000Z"]は任意の階数@${i}に対して要素@($ (@ua{i} . elem-of . (d-fun-type ("X" . elem-of . @universe{i}) (is-contr (d-pair-type ("Y" . elem-of . @universe{i}) ("X" . equiv . "Y"))))))を構成できるという規則だとも言える。本書では、次のように感覚的に使い分ける。
      @unordered-list[
        @list-item{規則は新しい型の種類を導入する際に使われ、その型が何なのかを説明するものである。例えば@ref["000H"]は関数型を説明するための規則だが、@${@ua{i}}は複合的な型の要素でしかなく、新しい型を説明するものではない。}
        @list-item{規則は導入した後はいつでも暗黙的に使うが、公理を使用する際は明示する。これは公理がどのように使われるかを強調するためというのもあるが、相反する公理を導入する可能性も考えると公理を大域的に仮定するのは良くないというのがある。あるいは、規則は型理論の基盤にあたるものだが公理は選択的な機能だと言ってもよい。}
      ]
      ちなみに、公理はある型が可縮であるという形で述べられることが多い。よって、@${@ua{i}}のような名前を付ける必要はない。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000X)))
