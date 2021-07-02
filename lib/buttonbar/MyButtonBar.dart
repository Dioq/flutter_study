import 'package:flutter/material.dart';

class MyButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonBar'),
      ),
      body: Center(
        // 末端按钮对齐的容器
        child: ButtonBar(
          // 对齐方式 默认为末端end
          alignment: MainAxisAlignment.spaceEvenly,
          // child 大小
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ElevatedButton(
              child: Text('按钮1'),
              onPressed: () {
                print('按钮 0');
              },
            ),
            RaisedButton(
                child: Text('按钮1'),
                color: Colors.yellowAccent,
                onPressed: () {
                  print('按钮1');
                }),
            RaisedButton(
                child: Text('按钮2'),
                color: Colors.yellowAccent,
                onPressed: () {
                  print('按钮2');
                }),
            RaisedButton(
                child: Text('按钮3'),
                color: Colors.yellowAccent,
                onPressed: () {
                  print('按钮3');
                })
          ],
        ),
      ),
    );
  }
}
