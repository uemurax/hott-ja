#lang at-exp typed/racket

(require "lib/markup.rkt"
         "lib/math.rkt")

(provide part:001T)

(define part:001T
  @example[
    #:id "001T"
    #:indexes @list[
      @index[#:key "ろんりてきにどうち"]{論理的に同値}
    ]
    @paragraph{
      @${i}を階数、@($ ("A" . elem-of . @universe{i}))と@($ ("B" . elem-of . @universe{i}))を型とする。型@($ (("A" . log-equiv . "B") . elem-of . @universe{i}))を@($ (record-type (seq (log-equiv-to . elem-of . ("A" . fun-type . "B")) (log-equiv-from . elem-of . ("B" . fun-type . "A")))))と定義する。@($ ("A" . log-equiv . "B"))の要素がある時、@${A}と@${B}は@dfn{論理的に同値(logically equivalent)}であると言う。@emph{反射律}、@emph{対称律}、@emph{推移律}を次のように構成できる。
      @unordered-list[
        @list-item{@($ ((record-elem (seq (log-equiv-to . def-eq . @id-fun{A}) (log-equiv-from . def-eq . @id-fun{A}))) . elem-of . ("A" . log-equiv . "A")))}
        @list-item{@($ ((abs "e" (record-elem (seq (log-equiv-to . def-eq . ("e" . record-field . log-equiv-from)) (log-equiv-from . def-eq . ("e" . record-field . log-equiv-to))))) . elem-of . ((paren ("A" . log-equiv . "B")) . fun-type . (paren ("B" . log-equiv . "A")))))}
        @list-item{@($ ((abs (seq "e" "f") (record-elem (seq (log-equiv-to . def-eq . (("f" . record-field . log-equiv-to) . fun-comp . ("e" . record-field . log-equiv-to))) (log-equiv-from . def-eq . (("e" . record-field . log-equiv-from) . fun-comp . ("f" . record-field . log-equiv-from)))))) . elem-of . ((paren ("A" . log-equiv . "B")) . fun-type . ((paren ("B" . log-equiv . "C")) . fun-type . (paren ("A" . log-equiv . "C"))))))}
      ]
    }
  ])

(module+ main
  (require morg/text)
  (display (->text part:001T)))
