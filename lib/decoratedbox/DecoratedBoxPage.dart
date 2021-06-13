import 'package:flutter/material.dart';

class DecoratedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DecoratedBox'),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          // 添加装饰
          child: DecoratedBox(
            // 图片所在图层 background 是在后面, foreground 是在前面
            position: DecorationPosition.background,
            decoration: BoxDecoration(
                //背景色
                color: Colors.grey,
                // 弧度
                // borderRadius: BorderRadius.circular(150),
                // 形状
                shape: BoxShape.circle,
                //边框线
                border: Border.all(
                    // 颜色
                    color: Colors.red,
                    // 宽度
                    width: 3.0),
                //设置背景图片
                image: DecorationImage(
                    fit: BoxFit.fitWidth, image: ExactAssetImage('cat.png'))),
            child: Text(
              '定位演示',
              style: TextStyle(fontSize: 36.0, color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
