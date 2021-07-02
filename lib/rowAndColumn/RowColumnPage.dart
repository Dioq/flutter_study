import 'package:flutter/material.dart';

class RowColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Column'),
      ),
      body: Container(
        // double.infinity 是无穷大
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        // alignment: Alignment.center,
        // Column 和 Row 用法一样,Column是列,Row 是行
        child: Row(
          // 在主轴上分布方式
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // 交叉轴
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.red,
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.green,
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
