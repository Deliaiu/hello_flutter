import 'package:flutter/material.dart';
import 'demo/home_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(//页面
      debugShowCheckedModeBanner: false, //是否显示右上角debug
      title: 'Material App',
      home: HomeDemo(), //自定义部件
      theme: ThemeData(//主题
        primarySwatch: Colors.cyan, //主题颜色
      ),
    );
  }
}

