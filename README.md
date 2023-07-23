# ホモトピー型理論

*ホモトピー型理論 (Homotopy Type Theory, HoTT)* を日本語で解説する文書です。

## 準備

### Racket

適当に[Racket](https://racket-lang.org/)をインストールします。

### MOrg

[MOrg](https://github.com/uemurax/morg)をインストールします。

```shell
raco pkg install https://github.com/uemurax/morg
```

### LaTeX

`latexmk`と`luatexja`が要ります。
足りないパッケージがあれば[action.yml](.github/actions/build/action.yml)を参考にします。

## ビルド

`make`を実行するとHTML版とPDF版を生成し`_site/`にコピーします。

## ライセンス

[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
