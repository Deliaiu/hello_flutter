import 'package:flutter/material.dart';
import 'demo/home_demo.dart';
import 'demo/navigator_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //页面
      debugShowCheckedModeBanner: false, //是否显示右上角debug
      title: 'Material App',
      //自定义部件
      // home: HomeDemo(),
      // home: NavigatorDemo(),
      initialRoute: '/',
      routes: {
        '/':(context) => HomeDemo(),
        '/about': (context) => MyPage(title: 'About'),
      },

      //主题
      theme: ThemeData(
        //主题颜色
        primarySwatch: Colors.yellow,
        //点按高亮颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.3),
        //水波纹颜色
        splashColor: Colors.white70,
      ),
    );
  }
}
