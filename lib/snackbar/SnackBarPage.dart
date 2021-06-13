import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          final snackBar = new SnackBar(
              content: Text('这是一个SnackBar'),
              backgroundColor: Colors.green,
              // 显示时间
              duration: Duration(minutes: 1),
              action: SnackBarAction(
                textColor: Colors.white,
                label: '撤消',
                onPressed: () {
                  print('撤消了');
                },
              ));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text('点击我弹出提示消息'),
      ),
    );
  }
}
