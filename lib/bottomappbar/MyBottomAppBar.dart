import 'package:flutter/material.dart';

class MyBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomAppBar'),
      ),
      // FAB 按钮位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // FAB按钮
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('添加');
        },
      ),
      // 底部应用栏
      bottomNavigationBar: BottomAppBar(
        // FloatingActionButton 和 BottomAppBar 之间的距离
        notchMargin: 10.0,
        // 底部应用栏背景色
        color: Colors.green,
        child: Row(
          // 设置大小
          mainAxisSize: MainAxisSize.max,
          // 对齐方式
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  print('菜单');
                }),
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('搜索');
                })
          ],
        ),
      ),
    );
  }
}
