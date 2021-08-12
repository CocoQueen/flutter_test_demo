# flutter_test_demo

A new Flutter application.

## Flutter目录结构介绍、入口、自定义widget、center组件、text组件、materialApp组件、scaffold组件

 ### flutter目录结构介绍

 android:android的资源文件-Android平台相关代码

 build：运行项目时生成的编译目录

 ios：iOS的项目目录-iOS平台相关代码

 lib:写代码的目录，自己的代码和自己的资源文件存放的目录-flutter相关代码，我们主要编写的代码就在这个文件夹

 test：放置测试文件的，可以不用管-用于存放测试代码

 pubspec.yaml:项目中的配置文件，配置项目的名称，项目的描述以及项目所需要的各种依赖
              dependencies中配置第三方库-配置文件，一般存放一些第三方库的依赖。

 * flutter中的目录着重注意一下android、ios、lib、test、pubspec.yaml这几个文件夹，其他的暂不用理会。

 ### flutter入口文件、入口方法

 每一个flutter项目的lib目录里面都有一个main.dart 这个文件就是flutter的入口文件

 main.dart里面的

 ```java
 void main(){
 runApp(MyApp());
 }
 ```

也可以简写

```dart
void main()=>runApp(MyApp());
```
 其中的main方法是dart的入口方法。runApp方法是flutter的入口方法。
 MyApp是自定义的一个组件

 运行项目可以在terminal命令中输入flutter run。

 ### Flutter 把内容单独抽离成一个组件

 在flutter中自定义组件其实就是一个类，这个类需要继承StatelessWidget/StatefulWidget
 前期我们都集成statelesswidget。后期再详解statefulwidget的使用。
 statelesswidget是无状态组件，状态不可变的widget
    它是一个抽象类 继承它时需要实现它的build方法。
 statefulwidget是有状态的组件，持有的状态可能在widget生命周期改变

 ### MaterialApp和Scaffold 组件  装饰App

    MaterialApp
    MaterialApp 是一个方便的widget，它封装了应用程序实现material design所需要的一些widget。一般作为顶层widget使用。
    常用的属性：
        home（主页）[可以调用Scaffold组件]、title（标题）、color（颜色）、theme（主题）、routes（路由）...
    Scaffold
    Scaffold 是material design布局结构的基本实现，此类提供了用于显示drawer、snackbar和底部sheet的API。
    Scaffold有下面几个主要的属性：
        appBar-显示在界面顶部的一个AppBar。
        body-当前界面所显示的主要内容widget。
        drawer-抽屉菜单控件。
        ...

## Flutter Container组件、Text组件详解
    ### Container组件
      alignment:
      topCenter:顶部居中对齐
      topLeft:顶部左对齐
      topRight:顶部右对齐
      center:
      cneterLeft:
      centerRight:
      bottomCenter:
      bottomLeft:
      bottomRight:

      decoration:
      ```java
      decoration:BoxDecoration(
      color:Colors.blue,
      border:Border.all(
      color:Colors.red,
      width:2.0,
      ),
      borderRadius:BorderRadius.all(
      Radius.circular(8.0)
      )
      )
      ```
     margin:与外部组件的距离  EdgeInsets.all(20.0)
     padding：内边距 与child之间的距离 EdgeInsets.all(20.0)
     transform：让Container容易进行一些旋转之类的

       ### Text组件
       textAlign:文本对齐方式（center 居中，left 左对齐，right 右对齐，justfy两端对齐）
       textDirection:文本方向（ltr从左至右，rtl 从右至左）
       overflow:文字超出屏幕之后的处理方式（clip 裁剪 fade 渐隐 ellipsis 省略号）
       textScaleFactor:字体显示倍率
       maxLines:文字显示最大行数
       style:字体的样式设置

       TextStyle:

       decoration：文字装饰线（none 没有线 lineThrough 删除线 overline 上划线 underline 下划线）
       decorationColor：文字装饰线颜色
       decorationStyle：文字装饰线风格（[dashed，dotted] 虚线，double 两根线，solid 一根实线 wavy 波浪线）
       wordSpacing:单词间隙（如果是负值，会让单词变得更紧凑）
       letterSpacing：字母间隙（如果是负值，会让字母变得更紧凑）
       fontStyle：文字样式（italic 斜体 normal 正常体）
       fontSize：文字大小
       color：文字颜色
       fontWeight:字体粗细（bold 粗体 normal 正常体）



