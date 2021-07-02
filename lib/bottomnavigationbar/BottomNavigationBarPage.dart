import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyStatefulWidget();
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // 当前选中的项索引
  int _currentIndex = 1;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home', style: optionStyle),
    Text('Index 1: Business', style: optionStyle),
    Text('Index 2: School', style: optionStyle),
    Text('Index 3: Settings', style: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BottomNavigationBar'),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
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
        ));
  }
}
