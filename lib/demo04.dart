import 'package:flutter/material.dart';
import 'listData.dart';

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
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class HomeContent extends StatelessWidget {
  List list = [];

  HomeContent() {
    for (var i = 0; i < 20; i++) {
      this.list.add("我是第$i条数据");
    }
  }

  //自定义方法
  List<Widget> _getData() {
    //动态数据
    List<Widget> list = [];
    //========
    // for (var i = 0; i < 20; i++) {

      // list.add(ListTile(
      //   title: Text("我是$i列表"),
      // ));
    // }
    //=========

    return list;
    //固定写死数据
    /*return [
      ListTile(
        title: Text("我是一个列表"),
      ),
      ListTile(
        title: Text("我是一个列表"),
      ),
      ListTile(
        title: Text("我是一个列表"),
      ),
    ];*/
  }

  List<Widget> _getData2() {
    var tempList = listData.map((e) {
      return ListTile(
        leading: Icon(Icons.settings),
        title: Text(e["title"]),
        subtitle: Text(e["author"]),
      );
    });
    return tempList.toList();
  }
  Widget _getListData(context,index){
    return ListTile(
      // title: Text(this.list[index]),
      title: Text(listData[index]["title"]),
      leading: Image.network(listData[index]["imageUrl"]),
      subtitle: Text(listData[index]["author"]),
    );
  }
  @override
  Widget build(BuildContext context) {
    //动态列表
    // return ListView(
    //   children: this._getData(),
    // );
    // return ListView(
    //   children: this._getData2(),
    // );

    //=======
    // return ListView.builder(
    //   itemCount:this.list.length,
    //   itemBuilder:(context,index){
    //     return this.list[index]
    //   }
    // );
    //=======

    return ListView.builder(
        // itemCount: this.list.length,
      itemCount: listData.length,
        itemBuilder:/* (context, index) {
          return ListTile(
            // title: Text(this.list[index]),
            title: Text(listData[index]["title"]),
          );
        }*/
      this._getListData

        );
    //静态列表
    // return Container(
    //   height: 100,
    //   child:  ListView(
    //     scrollDirection: Axis.horizontal,
    //     children: [
    //       Container(
    //         width: 180,
    //         height: 180,
    //         color: Colors.red,
    //       ),
    //       Container(
    //         width: 180,
    //         height: 180,
    //         color: Colors.orange,
    //       ),
    //       Container(
    //         width: 180,
    //         height: 180,
    //         color: Colors.yellow,
    //       ),
    //       Container(
    //         width: 180,
    //         height: 180,
    //         color: Colors.green,
    //       ),
    //       Container(
    //         width: 180,
    //         height: 180,
    //         color: Colors.blue,
    //       ),
    //       Container(
    //         width: 180,
    //         height: 180,
    //         color: Colors.purple,
    //       ),
    //       Container(
    //         width: 180,
    //         height: 180,
    //         color: Colors.pink,
    //       ),
    //       Container(
    //         width: 180,
    //         height: 180,
    //         color: Colors.greenAccent,
    //       ),
    //     ],
    //     //放置ListTile组件
    //     // padding: EdgeInsets.all(10),
    //     // scrollDirection: Axis.horizontal,
    //     // children: <Widget>[
    //     //   ListTile(
    //     //     leading: Icon(
    //     //       Icons.settings,
    //     //       color: Colors.red,
    //     //       size: 30,
    //     //     ), //前边添加图标
    //     //     title: Text(
    //     //       '这是一级标题',
    //     //       style: TextStyle(fontSize: 20, color: Colors.red),
    //     //     ),
    //     //     subtitle: Text('这是二级标题'),
    //     //     // trailing: Icon(Icons.accessibility_new_sharp),//后边添加图标
    //     //     trailing: Image.network(
    //     //       'https://upload-images.jianshu.io/upload_images/2406772-77eaa5c96494c21d.png',
    //     //       width: 100,
    //     //       height: 100,
    //     //     ),
    //     //   )
    //     // ],
    //   ),
    // );
  }
}
