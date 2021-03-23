import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_master/view/components/rive_animation.dart';
import 'package:google_fonts/google_fonts.dart';

class Top extends StatefulWidget {
  //試し
  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<Top> {
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
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black.withOpacity(0.4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
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
                          SizedBox(
                            width: 250,
                            child: Divider(
                              color: Colors.grey.shade200,
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.black.withOpacity(0.4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(30),
                              color: Colors.pink,
                              child: RiveAnimation(
                                assetpath: "assets/off_road_car.riv",
                                animation: "idle",
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(30),
                              color: Colors.pink,
                              child: RiveAnimation(
                                assetpath: "assets/sample.riv",
                                animation: "Untitled 1",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black.withOpacity(0.4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "START",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 5,
                                  color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.cyanAccent,
                                onPrimary: Colors.black,
                                elevation: 16,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                side: const BorderSide(),
                                padding: EdgeInsets.only(
                                    left: 60, right: 60, top: 20, bottom: 20)),
                          )
                        ],
                      ),
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: () {
          SystemNavigator.pop();
        },
      ),
    );
  }
}
