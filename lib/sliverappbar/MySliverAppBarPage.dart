import 'package:flutter/material.dart';

class MySliverAppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              // 是否预留高度
              primary: true,
              //标题前面显示的一个控件
              // leading: Icon(Icons.home),
              // 操作按钮
              actions: <Widget>[
                Icon(Icons.add),
                Icon(Icons.print),
              ],
              // 设置阴影值 z 在轴显示
              elevation: 10.0,
              // 展开高度
              expandedHeight: 200.0,
              //  是否随着滑动隐藏标题
              floating: false,
              // 与floating结合使用
              snap: false,
              //是否固定在顶部
              pinned: true,
              //  可折叠的应用栏
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  '可折叠的组件',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                // 折叠区域背景
                background: Image.network(
                  'https://picsum.photos/250?image=9',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Center(
          child: Text('展示一段文字'),
        ),
      ),
    );
  }
}
