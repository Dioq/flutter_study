import 'package:flutter/material.dart';

class OverflowBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OverflowBox'),
      ),
      body: Container(
        color: Colors.green,
        width: 200.0,
        height: 200.0,
        padding: const EdgeInsets.all(6.0),
        //溢出容器
        child: OverflowBox(
          //对齐方式
          alignment: Alignment.topLeft,
          //限制条件
          maxWidth: 300.0,
          maxHeight: 500.0,
          child: Container(
            color: Colors.blueGrey,
            width: 400.0,
            height: 400.0,
          ),
        ),
      ),
    );
  }
}
