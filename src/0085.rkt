#lang morg

(require "lib/markup/exercise.rkt"
         "lib/math.rkt"
         "lib/math/localization.rkt")

(define i "i")
(define G "G")
(define A "A")
(define X "X")
(define f "f")

@exercise[
  #:id (current-id)
  @paragraph{
    関数外延性を仮定する。@(math i)を階数、@(math (G . elem-of . (local-generator . $ . i)))を局所生成系、@(math (A . elem-of . (universe . $ . i)))を型とする。
    @ordered-list[
      @list-item{@(math (localization . $* . G A))は@(math G)-局所的である。}
      @list-item{@(math (X . elem-of . (universe . $ . i)))を型とし、@(math X)は@(math G)-局所的であると仮定する。関数@disp{
          @(math ((abs f (f . fun-comp . localization:in)) . elem-of . ((paren ((localization . $* . G A) . fun-type . X)) . fun-type . (paren (A . fun-type . X)))))
        }は同値である。}
    ]
  }
]
