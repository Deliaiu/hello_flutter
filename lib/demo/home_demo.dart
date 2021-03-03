/*
tabbar  在Appbar 设置标题栏按钮样式
tabbarView 在contriller设置对应页面
controller  实现联动
*/

import 'package:flutter/material.dart';
import 'drawer_demo.dart';
import 'bottomNavigationBar_demo.dart';
import 'listview_demo.dart';
import 'basic_demo.dart';
import 'layout_demo.dart';
// import 'view_demo.dart';
import 'sliver_demo.dart';

class HomeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //标签数量
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        //页面
        body: TabBarView(
          children: [
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            // ViewDemo(),
            SliverDemo(),
          ],
        ),
        //按钮
        appBar: AppBar(
          title: Text('第一个页面'),
          // //左侧图标 -- 有抽屉的话无须设置, 自带一个,自己设置得加方法
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: "navigation", //按钮作用介绍
          //   onPressed: () {
          //     debugPrint('点击了leftmenu按钮');
          //   },
          // ),
          //底部阴影, 默认4.0
          elevation: 0.0,
          //右侧区域 -- 可多个
          actions: [
            //右侧图标1
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "search", //按钮作用介绍
              onPressed: () {
                debugPrint('点击了right search 按钮');
              },
            ),
            //右侧图标2
            IconButton(
              icon: Icon(Icons.add),
              tooltip: "add", //按钮作用介绍
              onPressed: () {
                debugPrint('点击了right add 按钮');
              },
            ),
          ],
          bottom: TabBar(
            //设置未选中时颜色,便于区分
            unselectedLabelColor: Colors.black38,
            //设置选择线颜色
            indicatorColor: Colors.black38,
            //\设置选择线宽度
            indicatorSize: TabBarIndicatorSize.label,
            //设置选择线高度
            indicatorWeight: 1.0,
            //标题栏按钮
            tabs: [
              Tab(icon: Icon(Icons.local_activity), text: 'activity'),
              Tab(icon: Icon(Icons.local_library), text: 'library'),
              Tab(icon: Icon(Icons.local_cafe), text: 'cafe'),
              Tab(icon: Icon(Icons.access_alarms_sharp), text: 'alarms')
            ],
          ),
        ),
        //左侧抽屉
        drawer: DrawerDemo(),
        //右侧抽屉
        endDrawer: Text("右侧抽屉"),
        //底部导航栏
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
