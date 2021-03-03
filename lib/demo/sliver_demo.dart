/*
sliver 可视口
*/

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hello_flutter/model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // title: Text('标题'),
            //一直在顶部显示
            // pinned: true,
            //navi随之滚动
            // floating: true,
            //自定义 伸展高度 和bar
            expandedHeight: 123.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('你好', style: TextStyle(fontSize: 15.0, letterSpacing: 3.0,fontWeight: FontWeight.w400)),
              background: Image.network("https://fms.ipinyou.com/5/07/F3/0B/F001461W71Jw005A-Klx.jpg", fit: BoxFit.fill),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
              //设置圆角
              borderRadius: BorderRadius.circular(12.0),
              //阴影
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              //叠加
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      //对齐方式
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(posts[index].title, style: TextStyle(fontSize: 32.0, color: Colors.red, fontWeight: FontWeight.bold)),
                        Text(posts[index].author,style: TextStyle(fontSize: 28.0, color: Colors.red, fontWeight: FontWeight.normal)),
                      ],
                    ) ,
                    )
                ],
              ),
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  const SliverGridDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: posts.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.3,
      ),
    );
  }
}
