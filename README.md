# 支える技術ジェネレーター

ブログや電子書籍の技術同人誌でも使える「〇〇を支える技術」画像のジェネレーターです。

## 仕様
* 簡易的なジェネレーターです。
* サイズはB5のみです。
* フォーマットはPDFのみです。
* pdfからjpg, pngを作成する場合は、Imagemagickを使って下さい。

```bash
# 例: pdfから、jpg画像を作成
$ convert -density 300 sasaeru.pdf sasaeru.jpg
```

![sasaeru_b5](https://user-images.githubusercontent.com/39484102/58100145-06674000-7c18-11e9-9a67-d17484203d81.png)
