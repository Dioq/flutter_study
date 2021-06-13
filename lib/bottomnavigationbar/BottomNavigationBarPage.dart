import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
      ),
      body: Container(),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  // 当前选中的项索引
  int _currentIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // 底部按钮类型
      type: BottomNavigationBarType.fixed,
      // 按钮大小
      iconSize: 24.0,
      //点击里面的按钮回调的函数
      onTap: _onItemTapped,
      // 当前选项索引 高亮显示
      currentIndex: _currentIndex,
      // 未选中时颜色
      unselectedItemColor: Colors.black,
      // 选中颜色
      fixedColor: Colors.red,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            label: '聊天',
            icon: Icon(
              Icons.chat,
              color: Colors.green,
            )),
        BottomNavigationBarItem(label: '朋友圈', icon: Icon(Icons.refresh)),
        BottomNavigationBarItem(label: '我的', icon: Icon(Icons.person)),
      ],
    );
  }
}
