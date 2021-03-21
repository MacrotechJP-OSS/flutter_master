/*----------
  概要　　　：各画面から呼び出されるエラーメッセージを定義
  採番ルール：[小英字(1~2桁)][数字(2桁)][数字(4桁)]
  　　　　　　例）v990001
  　　　　　　小英字(1~2桁) .. エラーコードの処理箇所
  　　　　　　　　　　　　　　　s[サービス],vm[ビューモデル],v[ビュー],O[その他]
  　　　　　　数字(2桁) .. 対象機能
  　　　　　　　　　　　　　00[ユーザー],01[アルバム],99[その他]
  　　　　　　数字(4桁) .. 0001より順に採番
  備考　　　：(1)呼び出し方法は以下参考
  　　　　　　..Text(
  　　　　　　..　ErrorMessageConstant.v990001,
  　　　　　　..),
  ----------*/
class ErrorMessageConstant {
  // テスト値
  static String v990001 = 'エラーが発生しました。これはテスト用です。';
}
