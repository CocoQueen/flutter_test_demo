import 'package:flutter/material.dart';

void main() {
  //实例化类的时候可以省略new关键词
  runApp(MyApp());
}

//自定义组件---实际上就是创建一个类 把组件抽离成一个组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去除debug标识
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      // child: Image.network(
      //   "https://www.baidu.com/img/PC_69793e3487cd39e10b69d7358be8ca54.gif",
      //   alignment: Alignment.bottomRight,
      //   // color: Colors.red,
      //   // colorBlendMode: BlendMode.screen,
      //   // fit: BoxFit.cover,
      //   repeat: ImageRepeat.repeat,
      // ),
      // width: 300,
      // height: 300,
          //     //圆角图片实现一
          // decoration: BoxDecoration(
      //     color: Colors.amber,
      //     // borderRadius: BorderRadius.all(Radius.circular(20.0))
      //     borderRadius: BorderRadius.circular(150),
      //     image: DecorationImage(image: NetworkImage(
      //       'https://www.baidu.com/img/PC_69793e3487cd39e10b69d7358be8ca54.gif',
      //     ),
      //     fit: BoxFit.cover
      //     )
      // ),
          //圆角图片实现二
          // child: ClipOval(
          //   child: Image.network('http://pic1.win4000.com/pic/9/98/02c61179446.jpg',
          //   width: 300,
          //   height: 300,
          //   fit: BoxFit.cover,
          //   ),
          // ),
          //本地文件加载
          child: Image.asset('images/logo512.png',
          fit: BoxFit.cover,
          ),
    ));
  }
}
