import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:rive/rive.dart';

class Top extends StatefulWidget {
  //試し
  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<Top> {
  bool get isPlaying => _controller.isActive ?? false;

  Artboard _riveArtboard;

  RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Load the animation file from the bundle, note that you could also
    // download this. The RiveFile just expects a list of bytes.
    rootBundle.load('assets/off_road_car.riv').then(
      (data) async {
        final file = RiveFile();

        // Load the RiveFile from the binary data.
        if (file.import(data)) {
          // The artboard is the root of the animation and gets drawn in the
          // Rive widget.
          final artboard = file.mainArtboard;
          // Add a controller to play back a known animation on the main/default
          // artboard.We store a reference to it so we can toggle playback.
          artboard.addController(_controller = SimpleAnimation('idle'));
          setState(() => _riveArtboard = artboard);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // 画面全体サイズ
    final windowSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        // padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: <Widget>[
            Container(
              height: windowSize.height,
              width: double.infinity,
              // color: Colors.yellow.withOpacity(0.6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/sample1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: windowSize.height * 0.10,
                    color: Colors.black.withOpacity(0.4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Flutter",
                          style: GoogleFonts.merriweather(
                            textStyle: TextStyle(
                              fontSize: 35,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Image.asset(
                          "images/logo.png",
                          height: 50,
                          width: 50,
                        ),
                        Text(
                          "Master",
                          style: GoogleFonts.merriweather(
                            textStyle: TextStyle(
                              fontSize: 35,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: windowSize.height * 0.7,
                    color: Colors.black.withOpacity(0.4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(30),
                            color: Colors.yellow,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(30),
                            color: Colors.pink,
                            child: Rive(artboard: _riveArtboard),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: windowSize.height * 0.2,
                    color: Colors.black.withOpacity(0.4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "START",
                            style: TextStyle(fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(40)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.greenAccent,
              child: Text(
                "Flutter Master",
                style: GoogleFonts.merriweather(
                  textStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Flutter",
                  style: GoogleFonts.merriweather(
                    textStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Image.asset(
                  "images/logo.png",
                  height: 30,
                  width: 30,
                ),
                Text(
                  "Master",
                  style: GoogleFonts.merriweather(
                    textStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 220.0,
              padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 1.0,
                    blurRadius: 10.0,
                    offset: Offset(10, 10),
                  ),
                ],
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://img-cdn.guide.travel.co.jp/howto/375/446/50B936FAD284401885604DDA09C20858_L.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://storage.tenki.jp/storage/static-images/suppl/article/image/2/27/279/27937/1/large.jpg'),
                              backgroundColor: Colors.transparent, // 背景色
                              radius: 15, // 表示したいサイズの半径を指定
                            ),
                            onPressed: () {},
                          ),
                          Text("パンダ", style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              )),
                          Text("112")
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          "グアム旅行",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          right: 10,
                        ),
                        child: Text(
                          "2020.8.20\n〜2020.8.24",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
