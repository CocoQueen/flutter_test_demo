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
      child: Stack(//类似Android RelativeLayout 布局  先放的控件在下 后放的在上
        children: [
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Text("文本1",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white
          ),),
        ],
        // alignment: Alignment.center,//所有元素都居中
        alignment: Alignment(0.3,0.3),//0-1进行自由定位
      ),
    );
  }
}
