import 'package:flutter/material.dart';
import 'package:flutter_components/src/pages/HomePageTemp.dart';
import 'package:flutter_components/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "mi app components",
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }

}
