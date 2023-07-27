#lang morg

(require "lib/math.rkt")

(define C "C")

@section[
  #:id (current-id)
  #:title @%{降下性}
  @paragraph{
    高次帰納的型は一価性公理の下で@emph{降下性(descent property)}という著しい性質を持つ。降下性という言葉は∞トポス理論@ref["Lurie--2009-0000"]から取ったもので、余極限と有限極限を強く関連付ける性質である。
  }
  @paragraph{
    ファイバー余積の場合の降下性について説明する。少し長くなるが、ファイバー余積に関連する図式に名前を付ける。
  }
  (include-part "007J.rkt")
  (include-part "007K.rkt")
  (include-part "007L.rkt")
  (include-part "007M.rkt")
  @paragraph{
    降下性は「相対的な」余錐を使って説明されるので、それを導入する。
  }
  (include-part "007N.rkt")
  (include-part "007O.rkt")
  @paragraph{
    相対的な余錐は対型を取ることで普通の余錐にすることができる。
  }
  (include-part "007P.rkt")
  (include-part "007Q.rkt")
  @paragraph{
    最後にカルテシアンという性質を導入する。
  }
  (include-part "007R.rkt")
  (include-part "007S.rkt")
  @paragraph{
    いよいよ本題に入る。次の@ref["007T"]はファイバー余積が@emph{引き戻しで安定(stable under pullback)}であることを表し、これには一価性は必要ない。
  }
  (include-part "007T.rkt")
  @paragraph{
    一価性はカルテシアンな@(math C)上の余錐を構成するのに使われる。
  }
  (include-part "003V.rkt")
  @paragraph{
    ∞トポス理論で降下性と呼ばれる性質は@ref["007U"]のように述べられる。
  }
  (include-part "007U.rkt")
]
