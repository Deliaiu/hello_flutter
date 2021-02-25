import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  BottomNavigationBarDemo({Key key}) : super(key: key);

  @override
  _BottomNavigationBarDemoState createState() =>
      _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _onTapHander(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //点击效果
      onTap: _onTapHander,
      //默认选择
      currentIndex: _currentIndex,
      //项目大于四个需要设置类型
      type: BottomNavigationBarType.fixed,
      //设置颜色 -- 不设置默认主题颜色
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.expand),
          label: 'expand',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'history',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.keyboard),
          label: 'keyboard',
        ),
      ],
    );
  }
}
