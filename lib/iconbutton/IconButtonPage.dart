import 'package:flutter/material.dart';

class IconButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton'),
      ),
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.white38,
          ),
          child: IconButton(
            //图标
            icon: Icon(Icons.print),
            //图标大小
            iconSize: 50,
            //在父视图中的位置
            alignment: AlignmentDirectional.center,
            // 墨汁飞溅效果
            splashColor: Colors.green,
            // 长按时显示的图标
            tooltip: '长按显示',
            padding:
                EdgeInsets.only(bottom: 5.0, top: 5.0, left: 5.0, right: 5.0),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
