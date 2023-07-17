#lang morg

(require "lib/math.rkt"
         "lib/markup/exercise.rkt")

@exercise[
  #:id (current-id)
  @paragraph{
    @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))と@($ ("C" . elem-of . @universe{i}))と@($ ("D" . elem-of . @universe{i}))を型、@($ ("f" . elem-of . ("A" . fun-type . "B")))と@($ ("g" . elem-of . ("B" . fun-type . "C")))と@($ ("h" . elem-of . ("C" . fun-type . "D")))を関数とする。
    @ordered-list[
      @list-item{@($ ("f" . def-eq . ("f" . fun-comp . @id-fun{A})))であることを確かめよ。}
      @list-item{@($ ((@id-fun{B} . fun-comp . "f") . def-eq . "f"))であることを確かめよ。}
      @list-item{@($ ((("h" . fun-comp . "g") . fun-comp . "f") . def-eq . ("h" . fun-comp . ("g" . fun-comp . "f"))))であることを確かめよ。}
    ]
  }
]