import 'package:flutter/cupertino.dart';
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
        drawer: Drawer(),
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
      child: Text(
        '我是一个文本,我是一个文本,我是一个文本,我是一个文本,我是一个文本,我是一个文本,我是一个文本',
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.dashed),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        textScaleFactor: 1.2,
      ),
      height: 300.0,
      width: 300.0,
      padding: EdgeInsets.fromLTRB(10, 30, 50, 80),
      // padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.zero,
      // transform: Matrix4.translationValues(20, 10, 0)
      transform: Matrix4.rotationZ(0.3),
      decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.red,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      alignment: Alignment.bottomRight,
    ));
  }
}
