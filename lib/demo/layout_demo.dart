/*
row 横向排列
column 竖向排列

MainAxisAlignment 主轴排列
crossAxisAlignment 交叉轴排列方式

sizebox 可以留kong'b  

*/

import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //主轴排列方式
        mainAxisAlignment: MainAxisAlignment.center,
        //交叉轴对齐方式
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ConstrainedBoxDemo()
        ],
      ),
    );
  }
}

//带限制的盒子
class ConstrainedBoxDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      child: Container(
        color: Colors.blue,
      ),
      //设置最大最小高度
      constraints: BoxConstraints(
        minHeight: 200,
        maxWidth: 200.0,
      ),
    );
  }
}

//宽高比
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1),
      ),
    );
  }
}

//一摞小部件
class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      //对齐
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          width: 200.0,
          height: 200.0,
          child: Container(
            //设置位置
            alignment: Alignment(0.5, -0.5),
            child: Icon(
              Icons.cached,
              color: Colors.white,
              size: 33.0,
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        SizedBox(width: 10.0),
        SizedBox(
          width: 50.0,
          height: 50.0,
          child: Container(
            child: Icon(
              Icons.dangerous,
              color: Colors.white,
              size: 44.0,
            ),
            decoration: BoxDecoration(
                color: Colors.yellow,
                // borderRadius: BorderRadius.circular(8.0),
                //形状 -- 圆形
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [Colors.black, Colors.cyan])),
          ),
        ),
        Positioned(
          right: 90,
          bottom: 66,
          child: Icon(Icons.snooze, color: Colors.white, size: 16),
        ),
        Positioned(
          right: 40,
          bottom: -6,
          child: Icon(Icons.snooze, color: Colors.white, size: 16),
        ),
        Positioned(
          right: 110,
          bottom: 80,
          child: Icon(Icons.snooze, color: Colors.white, size: 16),
        ),
        Positioned(
          right: 100,
          bottom: 55,
          child: Icon(Icons.snooze, color: Colors.white, size: 16),
        ),
        Positioned(
          right: 80,
          bottom: 36,
          child: Icon(Icons.snooze, color: Colors.white, size: 16),
        ),
        Positioned(
          right: 190,
          bottom: 17,
          child: Icon(Icons.snooze, color: Colors.white, size: 16),
        ),
      ],
    );
  }
}

class MyIconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  MyIconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 53, 255, 1.0),
    );
  }
}
