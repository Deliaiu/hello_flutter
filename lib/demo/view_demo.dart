import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridViewBuildDemo(),
    );
  }
}

class GridViewBuildDemo extends StatelessWidget {
  Widget _gridItem(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(15.0),

      //第一种 -- 设定对称轴个数
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 10.0,
      //   mainAxisSpacing: 10.0,
      // ),
      //第二种 自适应
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        maxCrossAxisExtent: 150,
      ),
      itemCount: posts.length,
      itemBuilder: _gridItem,
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text("item $index",
            style: TextStyle(fontSize: 20.0, color: Colors.grey)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      //交叉轴最大尺寸
      maxCrossAxisExtent: 100.0,
      //交叉轴间距
      crossAxisSpacing: 15.0,
      //主轴间距
      mainAxisSpacing: 15.0,
      //滚动方向
      scrollDirection: Axis.vertical,
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text("item $index",
            style: TextStyle(fontSize: 20.0, color: Colors.grey)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //交叉轴对应数量
      crossAxisCount: 3,
      //交叉轴间距
      crossAxisSpacing: 15.0,
      //主轴间距
      mainAxisSpacing: 15.0,
      //滚动方向
      scrollDirection: Axis.vertical,
      children: _buildTiles(100),
    );
  }
}

class PageViewDemo2 extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(posts[index].title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.redAccent)),
              Text(posts[index].author,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 26,
                      color: Colors.redAccent))
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      //页面
      controller: PageController(
        //初始显示
        initialPage: 1,
        //是否默认记住
        keepPage: true,
        //是否占满可可视口
        viewportFraction: 0.80,
      ),
      //回调
      onPageChanged: (currentPage) => print(currentPage),
      //滚动方向
      scrollDirection: Axis.horizontal,
      //倒置
      reverse: true,
      //是否翻页
      pageSnapping: true,
      children: [
        Container(
          color: Colors.brown,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'One',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.deepPurple,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Two',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.deepOrange,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Three',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
