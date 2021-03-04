import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  const NavigatorDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: null,
              child: Text('home'),
            ),
            FlatButton(
              child: Text('about'),
              onPressed: () {
                Navigator.pushNamed(context, '/about');

                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (BuildContext context) => MyPage(
                //       title: 'about',
                //     ),
                //   ),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  final String title;

  MyPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      //在底部添加一个返回按钮
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
