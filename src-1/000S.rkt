#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(require "000T.rkt"
         "001J.rkt"
         "001K.rkt"
         "001L.rkt"
         "001N.rkt"
         "001O.rkt"
         "001P.rkt"
         "000V.rkt")

(provide part:000S)

(define part:000S
  @section[
    #:id "000S"
    #:title @%{可縮性}
    @paragraph{
      @emph{可縮性}はホモトピー型理論において中心的な役割を果たす概念である。
    }
    part:000T
    @paragraph{
      つまり、型@${A}が可縮であるとは、ある要素@($ (center . elem-of . "A"))があり、すべての@${A}の要素は@($ center)と同一視されるということである。やや非形式的に言うと、@${A}はただ一つの要素を持つということである。
    }
    @paragraph{
      後に示すことだが、@($ @is-contr{A})の任意の二つの要素は(関数外延性の下で)同一視される(@ref["0042"])。したがって、@${A}が可縮であると言った場合、@($ @is-contr{A})の要素があることは重要だが、その要素の具体的な定義は気にしなくてよい。あるいは、可縮性は型についての@emph{命題}であり、それを@emph{証明}できることは重要だがどのように証明されたかは重要ではないとも言える。
    }
    part:001O
    @paragraph{
      型は∞グルーポイドの構造を持っているので、ただ一つの要素を持つとはいっても異なる同一視のしかたがある可能性が懸念される。次の@ref["001L"]は、可縮性は見た目よりもずっと強い条件で、任意の二つの要素の同一視もただ一つだけあることを示す。@ref["001L"]を繰り返し使えば、任意に高次の同一視もただ一つだけあることが分かる。
    }
    part:001L
    @paragraph{
      型の可縮性は次の@ref["001N"]や@ref["001K"]を使って示される場合が多い。
    }
    part:001N
    @paragraph{
      @ref["001N"]は同一視型の帰納法の別表現と考えられる。同一視型の帰納法は型の族@($ ((abs "x" ("a" . id-type . "x")) . elem-of . ("A" . fun-type . @universe{i})))が@($ (@refl{a} . elem-of . ("a" . id-type . "a")))で自由に生成されることを表す。これは、対型@($ (d-pair-type ("x" . elem-of . "A") ("a" . id-type . "x")))が@($ (pair (seq "a" @refl{a})))で自由に生成されると言い換えられる。一つの要素で生成される型はその要素しか持たないと期待され、@ref["001N"]は実際にそうだと言っている。
    }
    @paragraph{
      @ref["001K"]は可縮性が@emph{レトラクト}で閉じることを主張する。
    }
    part:001J
    @paragraph{
      @($ (retract (seq "A" "B")))は@${@is-contr{A}}と違って命題ではないが、実用上は@($ (retract (seq "A" "B")))の要素の具体的な定義は重要ではない場合が多い。これは@ref["001K"]のように、ある性質がレトラクトで閉じるという使われ方をする場合が多いからである。
    }
    part:001K
    @paragraph{
      可縮性を使って型の@emph{同値}が定義される。
    }
    part:001P
    ;part:001Q
    part:000V
    @paragraph{
      この定義による同値の概念が妥当なものであるかは自明ではない。直観的には、@($ (fiber (seq "f" "b")))は@${b}の@${f}による逆像であり、@($ (is-contr (fiber (seq "f" "b"))))は逆像がただ一つの要素を持つことを表す。これはもっともらしい定義だが、@($ equiv/symb)が反射的、対称、推移的であることすら@ref["000V"]から直ちに分かることではない。@ref["000U"]でこの同値の概念が妥当であることを説明するが、その前にいくつか重要な定理と概念を導入する。
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:000S)))
