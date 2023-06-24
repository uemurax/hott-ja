#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt"
         "lib/math/n-type.rkt"
         "lib/math/util.rkt")

(provide-part (id)
  @section[
    #:id id
    #:title @%{命題}
    @paragraph{
      @($ trunc-level:-2)型は可縮な型であり、すべての次元の構造が自明であるという最も単純な型である。次に単純な型は@($ trunc-level:-1)型である。定義から、@${A}が@($ trunc-level:-1)型であるとは、任意の@($ (("x" . _ . "1") . elem-of . "A"))と@($ (("x" . _ . "2") . elem-of . "A"))に対して@($ (("x" . _ . "1") . id-type . ("x" . _ . "2")))が可縮であることである。つまり、任意の二つの要素の間にただ一つだけ同一視がある。@${A}を@($ trunc-level:-1)型とすると、@${A}の要素が存在するという情報には意味があるが、@${A}の二つの要素が同一かどうかは考える意味がない。このような@${A}を@emph{命題}と考え、@${A}の要素を命題の@emph{証明}と考える。
    }
    (include-part "0040.rkt")
    ;(include-part "004G.rkt")
    @paragraph{
      型が命題であることを示すには次が便利である。
    }
    (include-part "0041.rkt")
    @paragraph{
      レコード型の同一視型を決定する場面において、命題の部分は無視できることを示す(@ref["0049"])。
    }
    ;(include-part "006B.rkt")
    ;(include-part "0049.rkt")
    @paragraph{
      @ref["0049"]より、各@($ ("B" . fun-apply . "x"))が命題の時は、@($ (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))の要素の同一視に関しては二番目の要素は完全に無視される。そのため、@($ (d-pair-type ("x" . elem-of . "A") ("B" . fun-apply . "x")))は要素@($ ("a" . elem-of . "A"))と要素@($ ("b" . elem-of . ("B" . fun-apply . "a")))の対のなす型というよりは、要素@($ ("a" . elem-of . "A"))であって@emph{性質}@($ ("B" . fun-apply . "a"))を満たすもののなす@${A}の@emph{部分型}であると考えられる。この視点を強調するために記法を導入する。
    }
    ;(include-part "004A.rkt")
    @paragraph{
      さて、これまでいくつかの型に@($ (const "IsXXX"))という形の命名をしてきたが、これは(関数外延性の下で)その型が命題であることを意図している。多くの概念が可縮性を軸に定義されるので、@${@is-contr{A}}が命題であること(@ref["0042"])が基本的である。
    }
    (include-part "0042.rkt")
    ;(include-part "0043.rkt")
    ;(include-part "0044.rkt")
    @paragraph{
      @ref["004N"]で諸々の同値の概念も命題であることを見る。
    }
    @paragraph{
      @($ (is-trunc (seq "n" "A")))が命題である(@ref["0043"])ということは、@($ (trunc-type "n" "i"))は@${@universe{i}}の部分型となる。一価性公理から、その同一視型を計算できる。
    }
    ;(include-part "0054.rkt")
    @paragraph{
      命題の相対版も考える。
    }
    ;(include-part "005Y.rkt")
    ;(include-part "0062.rkt")
    #:subsections @list[
      ;(include-part "004N.rkt")
    ]
  ])

(module+ main
  (require morg/text)
  (preview))
