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
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: [
            Positioned(
              top:10,
              left: 20,
              child: Icon(Icons.home,size: 40,color: Colors.white,) ,
            ),
            Align(
              alignment: Alignment.center,
              child:  Icon(Icons.search,size: 40,color: Colors.white,),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Icon(Icons.send,size: 40,color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
