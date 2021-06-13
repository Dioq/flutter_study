import 'package:flutter/material.dart';

class SizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox'),
      ),
      body: Center(
        //指定宽高容器 chlid 不允许超出指定大小的范围
        child: SizedBox(
          width: 200.0,
          height: 200.0,
          child: Container(
            width: 300.0,
            height: 300.0,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
