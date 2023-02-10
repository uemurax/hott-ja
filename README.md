# ホモトピー型理論

*ホモトピー型理論 (Homotopy Type Theory, HoTT)* を日本語で解説する文書です。

## 準備

### Docker

[tuemura00/texlive](https://hub.docker.com/r/tuemura00/texlive)
に必要なパッケージをインストールしたイメージを用意してあります。

### Debian/Ubuntu

`texlive`, `texlive-latex-extra`, `texlive-extra-utils`, `texlive-luatex`, `texlive-lang-japanese`, `texlive-bibtex-extra`, `biber`, `latexmk` をインストールします。

## ビルド

`make` を実行すると `_build/` 内で pdf 版と html 版を生成し、 `_site/` に必要なファイルをコピーします。

## ライセンス

[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
