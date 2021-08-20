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
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "高级工程师",
                  style: TextStyle(fontSize: 10),
                ),
              ),
              ListTile(
                title: Text(
                  "电话：xxx",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                title: Text(
                  "地址：xxx",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "高级工程师",
                  style: TextStyle(fontSize: 10),
                ),
              ),
              ListTile(
                title: Text(
                  "电话：xxx",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                title: Text(
                  "地址：xxx",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "高级工程师",
                  style: TextStyle(fontSize: 10),
                ),
              ),
              ListTile(
                title: Text(
                  "电话：xxx",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                title: Text(
                  "地址：xxx",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "高级工程师",
                  style: TextStyle(fontSize: 10),
                ),
              ),
              ListTile(
                title: Text(
                  "电话：xxx",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                title: Text(
                  "地址：xxx",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
