import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'demo2.dart';
//import './home_nav.dart';
import 'profile/demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Demo(),
    );
  }
}
