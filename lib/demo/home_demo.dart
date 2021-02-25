import 'package:flutter/material.dart';
import '../model/post.dart';

class HomeDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(posts[index].imageUrl),
          SizedBox(
            height: 16.0,
          ), //下方留有空間
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 16.0,)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100], //设置背景色
        //常用页面组件
        appBar: AppBar(
          title: Text('hello '),
          elevation: 0.0, //底部阴影, 默认4.0
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        ));
  }
}

class HelloDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Hello World',
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.brown),
        ),
      ),
    );
  }
}
