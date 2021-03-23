import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

/*
  ■ ■ RiveアニメーションのコンポーネントWidget ■ ■
  ■ 概要：riveファイル読込処理を共通化させ、コードを短縮化
  ■ 引数：assetpath 対象のriveファイルパス
  ■ 引数：animation 実行アニメーション名
*/
class RiveAnimation extends StatefulWidget {
  const RiveAnimation({key, @required this.assetpath, @required this.animation})
      : super(key: key);

  final String assetpath;
  final String animation;

  @override
  _RiveAnimationState createState() => _RiveAnimationState();
}

class _RiveAnimationState extends State<RiveAnimation> {
  Artboard _riveArtboard;

  void initState() {
    super.initState();

    rootBundle.load(widget.assetpath).then(
      (data) async {
        final file = RiveFile();

        if (file.import(data)) {
          final artboard = file.mainArtboard;

          artboard.addController(SimpleAnimation(widget.animation));
          setState(() => _riveArtboard = artboard);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return (_riveArtboard != null)
        ? Rive(artboard: _riveArtboard)
        : Container(child: Center(child: Text("Loading")));
  }
}
