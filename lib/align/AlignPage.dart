import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageName = 'Align 对齐组件';

    return Scaffold(
        appBar: AppBar(
          title: Text(pageName),
        ),
        body: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.red,
          child: Align(
            //对齐方式
            // alignment: Alignment.bottomLeft,
            //对齐方式使用x,y来表示 范围-1.0 - 1.0
            alignment: Alignment(-0.5, -1.0),
            widthFactor: 3.0,
            heightFactor: 3.0,
            child: Container(
              color: Colors.green,
              width: 100.0,
              height: 50.0,
              child: Text(
                'align',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ));
  }
}
