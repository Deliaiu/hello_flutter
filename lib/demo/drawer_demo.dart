/*
抽屉 
drawer 左侧抽屉
enddrawer 右侧抽屉
*/

import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //抽屉控件
    return Drawer(
      //一般使用列表
      child: ListView(
        //n内边距设置0
        padding: EdgeInsets.zero,
        children: [
          //header
          // DrawerHeader(
          //   //字母设置为大写
          //   child: Text('header'.toUpperCase()),
          //   decoration: BoxDecoration(
          //       //设置背景色
          //       color: Colors.grey[100]),
          // ),
          //用户信息
          UserAccountsDrawerHeader(
            //用户名
            accountName: Text('用户名', style: TextStyle(fontWeight: FontWeight.bold)),
            //y邮箱
            accountEmail: Text('15621490015@163.com'),
            //用户头像 -- 圆形
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://pics3.baidu.com/feed/08f790529822720e5abb76ab553a104ef31fab67.png?token=f31d04a11389b4721a38f500c1f1d9e7&s=ABD246875551B1C81ED19D970300B001"),
            ),
            //添加背景色 和 背景图
            decoration: BoxDecoration(
              color: Colors.green[100],
              image: DecorationImage(
                //网络图片
                image: NetworkImage('https://pics4.baidu.com/feed/54fbb2fb43166d227ef04cbac78c13ff9152d254.png?token=37b84c9d1b807d790e36e2e538729a68&s=7DCEBD57450AFEE94A78D8FE03005039'),
                //填充模式
                fit: BoxFit.cover,
                //滤镜
                colorFilter: ColorFilter.mode(Colors.yellow.withOpacity(0.6), BlendMode.hardLight)
              ),
            ),
          ),
          ListTile(
            //文字
            title: Text('message', textAlign: TextAlign.right),
            //右侧添加图标, 左侧添加图标为leading
            trailing: Icon(Icons.message, color: Colors.black12, size: 22),
            //点击后关闭抽屉
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('favorite', textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('settings', textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
