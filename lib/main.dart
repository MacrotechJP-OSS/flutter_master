import 'package:flutter/material.dart';
import 'package:flutter_master/view/top_view.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Top(),
    },
  ));
}
