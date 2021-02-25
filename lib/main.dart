import 'package:flutter/material.dart';
import 'demo/home_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //页面
      title: 'Material App',
      home: HomeDemo(),
      theme: ThemeData(
        primarySwatch: Colors.cyan, //主题颜色
      ),
    );
  }
}

