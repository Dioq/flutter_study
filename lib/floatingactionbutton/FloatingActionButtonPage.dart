import 'package:flutter/material.dart';

class FloatingActionButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlatButton'),
      ),
      body: Column(
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.red,
            child: const Icon(Icons.add),
            onPressed: () {
              print('add is click');
            },
          ),
          FloatingActionButton(
              //图标
              child: const Icon(Icons.person),
              //提示信息
              tooltip: '自定义按钮',
              //背景色
              backgroundColor: Colors.blue,
              // 前景色
              foregroundColor: Colors.white,
              //hero效果使用
              heroTag: null,
              //未点击时的阴影
              elevation: 8.0,
              //点击时的阴影
              highlightElevation: 16.0,
              //是否为 mini 类型，默认的为false，FAB分为三种类型: regular,mini, extended
              mini: false,
              //方形样式
              // shape: Border.all(
              //     width: 2.0, color: Colors.white, style: BorderStyle.solid),
              //圆形样式
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 2.0,
                      color: Colors.white,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(2.0),
                    topLeft: Radius.circular(2.0),
                    bottomRight: Radius.circular(2.0),
                    bottomLeft: Radius.circular(2.0),
                  )),
              onPressed: () {
                print('person is click');
              }),
          // 扩展的FAB按钮
          FloatingActionButton.extended(
            onPressed: () {},
            label: Text('扩展按钮'),
            icon: Icon(Icons.explicit),
          )
        ],
      ),
    );
  }
}
