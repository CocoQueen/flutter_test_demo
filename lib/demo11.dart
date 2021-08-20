import 'package:flutter/material.dart';
import 'package:flutter_test_demo/listData.dart';

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
      children: listData.map((e) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  e["imageUrl"],
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                // leading: ClipOval(
                //   child: Image.network(
                //     "https://www.itying.com/images/flutter/2.png",
                //     fit: BoxFit.cover,height: 60,width: 60,),
                // ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(e["imageUrl"]),
                ),
                title: Text(
                  e["title"],
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  e["author"],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );

    // return ListView(
    //   children: [
    //     Card(
    //       margin: EdgeInsets.all(10),
    //       child: Column(
    //         children: [
    //           AspectRatio(
    //             aspectRatio: 20 / 9,
    //             child: Image.network(
    //               "https://www.itying.com/images/flutter/3.png",
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //           ListTile(
    //             // leading: ClipOval(
    //             //   child: Image.network(
    //             //     "https://www.itying.com/images/flutter/2.png",
    //             //     fit: BoxFit.cover,height: 60,width: 60,),
    //             // ),
    //             leading: CircleAvatar(
    //               backgroundImage: NetworkImage(
    //                   "https://www.itying.com/images/flutter/2.png"),
    //             ),
    //             title: Text(
    //               "张三",
    //               style: TextStyle(fontSize: 20),
    //             ),
    //             subtitle: Text(
    //               "高级工程师",
    //               style: TextStyle(fontSize: 10),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     Card(
    //       margin: EdgeInsets.all(10),
    //       child: Column(
    //         children: [
    //           AspectRatio(
    //             aspectRatio: 20 / 9,
    //             child: Image.network(
    //               "https://www.itying.com/images/flutter/3.png",
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //           ListTile(
    //             leading: ClipOval(
    //               child: Image.network(
    //                 "https://www.itying.com/images/flutter/2.png",
    //                 fit: BoxFit.cover,
    //                 height: 60,
    //                 width: 60,
    //               ),
    //             ),
    //             title: Text(
    //               "张三",
    //               style: TextStyle(fontSize: 20),
    //             ),
    //             subtitle: Text(
    //               "高级工程师",
    //               style: TextStyle(fontSize: 10),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}
