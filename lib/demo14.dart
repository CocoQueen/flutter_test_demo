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
    return Wrap(
      spacing: 10,//横间距
      runSpacing: 10,//纵间距
      runAlignment: WrapAlignment.end,
      direction: Axis.vertical,
      // alignment: WrapAlignment.center,
      children: [
        MyButton("第1季"),
        MyButton("第2季第2季第2季第2季"),
        MyButton("第3季"),
        MyButton("第4季"),
        MyButton("第5  季"),
        MyButton("第季"),
        MyButton("季"),
        MyButton("第8季"),
        MyButton("第9季"),
        MyButton("第9季"),
        MyButton("第9季"),
        MyButton("第9季"),
        MyButton("第9季"),
        MyButton("第9季"),
        MyButton("第9季"),
        MyButton("第9季"),
        MyButton("第9季"),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  MyButton(this.text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text(this.text),
        textColor: Theme
            .of(context)
            .accentColor,
        onPressed: () {});
  }
}

