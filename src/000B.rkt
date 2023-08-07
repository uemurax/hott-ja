#lang morg

@section[
  #:id (current-id)
  #:title @%{レコード型}
  @paragraph{
    @emph{レコード型}は構造を記述するのに便利な型である。本書では、組み込み型としては単位型と対型を導入し、レコード型は記法として実現する。これは体系を単純なものに抑えるためである。
  }
  @paragraph{
    @emph{単位型}は要素を丁度一つ持つ型である。
  }
  (include-part "000K.rkt")
  @paragraph{
    @emph{対型}は要素の対を要素に持つ型である。
  }
  (include-part "000L.rkt")
  (include-part "000M.rkt")
  (include-part "000N.rkt")
  @paragraph{
    対型を繰り返し使って得られる型の要素は何らかの@emph{構造}だと考えられる。構造の成分に名前をつけるための記法を導入する。
  }
  (include-part "000O.rkt")
  (include-part "000W.rkt")
  (include-part "001T.rkt")
  (include-part "001U.rkt")
  @paragraph{
    対型に関する基本的な関数をいくつか定義する。
  }
  (include-part "0014.rkt")
  (include-part "0015.rkt")
  (include-part "0016.rkt")
  (include-part "0017.rkt")
  (include-part "0018.rkt")
  (include-part "0019.rkt")
  (include-part "001A.rkt")
  (include-part "001B.rkt")
  (include-part "002M.rkt")
]
