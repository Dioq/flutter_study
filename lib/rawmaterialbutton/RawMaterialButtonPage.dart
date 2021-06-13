import 'package:flutter/material.dart';

class RawMaterialButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RawMaterialButton'),
      ),
      body: RawMaterialButton(
        onPressed: () {
          print('RawMaterialButton');
        },
        child: Text('RawMaterialButton 组件'),
        highlightColor: Colors.red,
        splashColor: Colors.blue,
        // 抗锯齿
        clipBehavior: Clip.antiAlias,
        padding: EdgeInsets.only(bottom: 5.0, top: 5.0, left: 5.0, right: 5.0),
        highlightElevation: 10.0,
      ),
    );
  }
}
