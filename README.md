# flutter_master

A new Flutter project.

# 実行
通常起動されるとネットワーク画像の表示が出来ない為、以下コマンドで起動させる。
```
$ flutter run -d chrome --web-renderer html
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Directory structure
lib/  
├ constant/    .. 都道府県の情報など値に変更がない固定値を定義  
├ extension/  .. DateTime や String などの extension を定義  
├ model/  .. モデル層。データの保持。  
├ plugin/  .. Flutter で実現できなかったことをネイティブで行うための plugin を記述
├ res/  .. 色や文字のスタイルなどを定義  
├ service/  .. API通信の処理を記述  
├ ui/  .. ページごとにディレクトリを分けて作成  
├ view_model/  .. ui層と同じ要領で、LoginViewModelなどを作成  
