import 'package:flutter/cupertino.dart';
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
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class HomeContent extends StatelessWidget {
  List<Widget> _getGridData() {
    List<Widget> list = [];
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        color: Colors.blueAccent,
        child: Text("数据$i"),
      ));
    }
    return list;
  }

  List<Widget> _getGridData2() {
    var tempList = listData.map((e) {
      return Container(
        child: Column(
          children: [
            Image.network(e["imageUrl"]),
            SizedBox(
              height: 10,
            ),
            Text(
              e["title"],
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.yellow, width: 1)),
      );
    });
    return tempList.toList();
  }

  Widget _getGridData3(context, index) {
    return Container(
      child: Column(
        children: [
          Image.network(listData[index]["imageUrl"]),
          SizedBox(
            height: 10,
          ),
          Text(
            listData[index]["title"],
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.yellow, width: 1)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: listData.length,
        itemBuilder: this._getGridData3,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20, //列间距
          mainAxisSpacing: 20, //行间距
        ));
    //第三种实现方式
    // return GridView.count(crossAxisCount: 3,
    // children: this._getGridData2(),
    // );
    //第二种实现方式
    // return GridView.count(
    //   padding: EdgeInsets.all(10),
    //   crossAxisCount: 2,
    //   crossAxisSpacing: 20,//列间距
    //   mainAxisSpacing: 20,//行间距
    //   childAspectRatio: 0.7,//宽高比
    //   children: this._getGridData(),
    // );
    //第一种实现方式
    // return GridView.count(
    //   crossAxisCount: 2,//表示展示几列
    //   children: [
    //     Text("data"),
    //     Text("data"),
    //     Text("data"),
    //     Text("data"),
    //     Text("data"),
    //     Text("data"),
    //     Text("data"),
    //     Text("data"),
    //   ],
    // );
  }
}
