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
    return Row(
      children: [
        IconContainer(Icons.search, color: Colors.blue),
        Expanded(
          child: IconContainer(Icons.home, color: Colors.red),
          flex: 2,
        ),
        IconContainer(Icons.search, color: Colors.blue),
      ],
    );

    // return Container(
    //   width: 600,
    //   height: 600,
    //   color: Colors.amber,
    //   child: Column(
    //     children: [
    //       IconContainer(Icons.home,color: Colors.red),
    //       IconContainer(Icons.search,color: Colors.yellow),
    //       IconContainer(Icons.person,color: Colors.green),
    //     ],
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //   ),
    // );
    // return Container(
    //   width: 600,
    //   height: 600,
    //   color: Colors.amber,
    //   child: Row(
    //     children: [
    //       IconContainer(Icons.home,color: Colors.red),
    //       IconContainer(Icons.search,color: Colors.yellow),
    //       IconContainer(Icons.person,color: Colors.green),
    //     ],
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //   ),
    // );
  }
}

// ignore: must_be_immutable
class IconContainer extends StatelessWidget {
  double size;
  Color color;
  IconData icon;

  IconContainer(this.icon, {this.color = Colors.red, this.size = 32});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Center(
        child: Icon(this.icon, size: this.size, color: Colors.white),
      ),
    );
  }
}
