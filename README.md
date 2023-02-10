# ホモトピー型理論

*ホモトピー型理論 (Homotopy Type Theory, HoTT)* を日本語で解説する文書です。

## 準備

### Docker

[ghcr.io/uemurax/docker-texlive-ja:latest](https://github.com/uemurax/docker-texlive-ja/pkgs/container/docker-texlive-ja)
に十分にパッケージをインストールしたイメージを用意してあります。

### Debian/Ubuntu

`latexmk`, `biber` と `texlive` 関連のパッケージを必要に応じてインストールします。

## ビルド

`make` を実行すると `_build/` 内で pdf 版と html 版を生成し、 `_site/` に必要なファイルをコピーします。

## ライセンス

[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
