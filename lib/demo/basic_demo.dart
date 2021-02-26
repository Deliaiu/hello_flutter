import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //尺寸边距圆角阴影等效果
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://pics0.baidu.com/feed/a6efce1b9d16fdfab717faf5e7c9975c94ee7b7b.jpeg?token=2cb67bcfee6b6ca3921c87952965de04&s=74E39A565A72CCC60E37F7BC0300D01E'),
          //位置
          alignment: Alignment.topCenter,
          //重复
          // repeat: ImageRepeat.repeatX,
          //拉伸
          fit: BoxFit.cover,
          //滤镜
          colorFilter: ColorFilter.mode(Colors.yellow.withOpacity(0.5), BlendMode.hardLight),
        )
      ),
      //横排显示
      child: Row(
        //主轴对齐
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(Icons.padding, size: 50.0, color: Colors.white),
            // color: Colors.orange,
            //内边距
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            //外边距
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            //设置装饰
            decoration: BoxDecoration(
              //背景色  不能与container 同时设置
              color: Colors.orange,
              // //边框
              // border: Border.all(
              //   color: Colors.blue,
              //   width: 3.0,
              //   style: BorderStyle.solid,
              // ),
              // //分别设置边框
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.blue,
              //     width: 3.0,
              //     style: BorderStyle.solid,
              //   ),
              //   bottom: BorderSide(
              //     color: Colors.brown,
              //     width: 3.0,
              //     style: BorderStyle.solid,
              //   )
              // ),

              //设置圆角效果
              // borderRadius: BorderRadius.circular(4.0)
              //分别设置 -- 不能与边框同时设置
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(10.0),
              //   bottomRight: Radius.circular(10.0),
              // ),
              //设置阴影效果
              boxShadow: [
                BoxShadow(
                  //阴影便宜
                  offset: Offset(10, 15),
                  //颜色
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  //模糊程度 -- 值越大越模糊
                  blurRadius: 19.0,
                  //阴影扩散程度 + 扩散  - 缩小
                  spreadRadius: -5,
                ),
                BoxShadow(
                  //阴影便宜
                  offset: Offset(-10, -15),
                  //颜色
                  color: Colors.brown,
                  //模糊程度 -- 值越大越模糊
                  blurRadius: 19.0,
                  //阴影扩散程度 + 扩散  - 缩小
                  spreadRadius: 0.0,
                ),
              ],
              //改变盒子形状
              shape: BoxShape.rectangle, //方形
              //渐变效果
              //镜像渐变 -- 从里向外
              // gradient:
              //  rRadialGradient(colors: [Colors.lightBlue, Colors.blueGrey])),
              //线性渐变 -- 默认从左往右
              gradient: LinearGradient(
                colors: [Colors.lightBlue, Colors.blueGrey],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
            text: '她（他）们',
            style: TextStyle(
              //文字颜色
              color: Colors.deepPurpleAccent,
              //字号
              fontSize: 34.0,
              //字体 斜体等
              fontStyle: FontStyle.italic,
              //加粗
              fontWeight: FontWeight.w200,
            ),
            //剩下的类型不同的文字
            children: [
              TextSpan(
                  text: '平凡却是那么伟大',
                  style: TextStyle(
                    //文字颜色
                    color: Colors.indigoAccent,
                    //字号
                    fontSize: 30.0,
                    //字体 斜体等
                    fontStyle: FontStyle.normal,
                    //加粗
                    fontWeight: FontWeight.w500,
                  )),
            ]),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = '哈哈';
  final String _title = "flutter";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        //文字
        '$_author   $_title 她（他）们平凡却是那么伟大。向所有奋战扶贫攻坚一线的功臣表示崇高的敬意。10 评选出的仅仅是杰出典范只是数以万千中的缩影，她们必将成为我们继续奋进的强大动力，为早日建成社会主义现代化强国付出每个人的力量',
        //对齐
        textAlign: TextAlign.center,
        //行数
        maxLines: 3,
        //溢出省略号
        overflow: TextOverflow.ellipsis,
        //字体  大小粗细等
        style: _textStyle,
      ),
    );
  }
}
