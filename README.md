# flutter_test_demo


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
     Container组件
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

     margin:与外部组件的距离  EdgeInsets.all(20.0)
     padding：内边距 与child之间的距离 EdgeInsets.all(20.0)
     transform：让Container容易进行一些旋转之类的

      Text组件
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


## flutter 图片组件

       图片组件是显示图像的组件，image组件有很多构造函数，这里只描述两个
       image.asset 本地图片
       image.network 远程图片

       image组件的常用属性：
       alignment: 图片的对齐方式
       color和colorBlendMode：设置图片的背景颜色，通常和colorBlendMode配合一起使用，这样可以是图片颜色和背景颜色混合。
       fit：类型-BoxFit fit属性用来控制图片的拉伸和挤压，这个都是根据父容器来的。
            boxfit.fill:全图显示，图片会被拉伸，并充满父容器
            boxfit.contain:全图显示，显示原比例，可能会有空隙
            boxfit.cover:显示可能拉伸，可能裁切，充满（图片要充满整个容器，还不变形）
            boxfit.fitWidth:宽度充满（横向充满），显示可能拉伸，可能裁切
            boxfit.fitHeight:高度充满（竖向充满），显示可能拉伸，可能裁切
            boxfit.scaleDown:效果和contain差不多，但是此属性不允许显示超过源图片大小，可小不可大。
       repeat:平铺
            imagerepeat.repeat:横向和纵向都进行重复，直到铺满整个画布
            imagerepeat.repeatx:横向重复，纵向不重复
            imagerepeat.repeaty:纵向重复，横向不重复
       width:宽度 一般结合clipoval才能看到效果
       height:高度 一般结合clipoval才能看到效果

       加载网络图片以及图片圆角请查看demo03中内容。

       flutter 引入本地图片：
       1、根目录中新建images文件夹（这个文件夹跟lib平行），在这个文件夹中需要定义2.0x(官方要求),3.0x(官方要求),4.0x
       2、将图片存放到images对应大小的文件中
       3、pubspec.yaml文件中声明添加的图片文件，这个注意要配置对哦

## flutter listview 基础列表组件、水平列表组件、图标组件
    ### flutter列表组件概述

        列表布局是我们项目开发中最常用的一种布局方式。flutter中我们可以通过listview来定义列表项，支持
        垂直和水平方向展示。通过一个属性就可以控制列表的显示方向。列表有以下分类：

        1、垂直列表
        2、垂直图文列表
        3、水平列表
        4、动态列表
        5、矩阵式列表

    ### flutter列表参数

        scrollDirection:
            Axis.horizontal:水平列表
            Axis.vertical:垂直列表
        padding:内边距
        resolve:组件反向排序
        children：列表元素 List<Widget>

    ### 基本列表
    参考demo04,代码

## Gridview

    ### 概述
       当数据量很大的时候用矩阵方式排列比较清晰，此时我们可以用网格列表组件Gridview实现布局。
    
       Gridview创建网格列表有多种方式，现在主要介绍以下两种：
       
       1、Gridview.count
       
       2、Gridview.builder （与listview类似）

    ### 常用属性：
       scrollDirection:滚动方法
       
       padding:内边距
       
       resolve:组件反向排序
       
       crossAxisSpacing:水平子widget之间间距
       
       mainAxisSpacing:垂直子widget之间间距
       
       crossAxisCount:一行的widget数量
       
       childAspectRatio:子widget宽高比例
       
       children:<Widget>[]
       
       gridDelegate:[SliverGridDelegateWithFixedCrossAxisCount（常用） SliverGridDeletegateWithMaxCrossAxisExtent]控制布局主要用在GridView.builder里面

##  flutter 页面布局 padding row(水平布局) column（垂直布局） expandde 组件

    ### 概述
    在html 中常见的布局标签都有padding属性，但是flutter中很多widget是没有padding属性。
    这个时候我们可以用padding组件处理容器与子元素之间的间距。

    ### padding属性：
    padding：padding值 edgeinsetss 设置填充的值
    child:子组件

    ### row水平布局 column垂直布局 属性：

    mainAxisAlignment:主轴的排序方式
    crossAxisAlignment:次轴的排序方式
    children:组件子元素

    ### expanded 类似web中的flex布局
    flex:元素占整个父row/column的比例
    child：子元素
















