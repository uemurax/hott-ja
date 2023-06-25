#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt"
         "lib/math/hae.rkt"
         "lib/math/qinv.rkt"
         "lib/math/biinv.rkt")

(provide-part (id)
  @section[
    #:id id
    #:title @%{他の同値の概念}
    @paragraph{
      @ref["001Q"]の他にも同値の概念の定義はある。
    }
    (include-part "004J.rkt")
    (include-part "004K.rkt")
    @paragraph{
      @ref["004J"]の利点は比較的低級な概念で定義できる点である。この定義で使われている概念は恒等関数、合成、ホモトピーだけである。これらの概念は一般の高次圏で意味をなすものであり、実際、高次圏での同値は両側可逆性で定義できる。一方、ファイバーや可縮性には型理論の言語が本質的に使われている。ただ、@ref["004J"]から直接取り出せる情報はそれほど有益でなく、逆関数の取り方も二種類あるので使い勝手が良いとは言えない。
    }
    (include-part "004L.rkt")
    (include-part "004M.rkt")
    @paragraph{
      @ref["004L"]は@ref["004J"]と比べて有益な情報が多い。その分、その定義には一つ高次の同一視(@($ is-hae:coh))を使う。
    }
    @paragraph{
      次の@ref["004T"]も同値の概念を定義しているように見えるかもしれないが、これは正しい同値の定義@emph{ではない}。
    }
    (include-part "004T.rkt")
    ;(include-part "004U.rkt")
    @paragraph{
      @ref["004U"]により、関数@${f}が同値であることを示す目的では@${@qinv{f}}を使って何も問題はない。@${@qinv{f}}が他に挙げた正しい同値の概念と決定的に違うのは、同一でない二つの@${@qinv{f}}の要素がありうる点である。後に示すが、(関数外延性の下で)@${@is-equiv{f}}と@${@is-biinv{f}}と@${@is-hae{f}}はいずれも任意の二つの要素が同一視される(@ref["0044"]と@ref["004O"]と@ref["004R"])。@${@qinv{f}}についてはこの性質は示せないどころか、一価性公理の下で@${@qinv{f}}が同一でない二つの要素を持つような@${f}を構成できることが知られている。
    }
  ])

(module+ main
  (require morg/text)
  (preview))
