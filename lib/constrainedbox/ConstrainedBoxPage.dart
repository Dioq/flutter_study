import 'package:flutter/material.dart';

class ConstrainedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 200,
              height: 60,
              color: Colors.red,
              child: Text(
                'width=maxWidth  height=maxHeight',
                style: TextStyle(color: Colors.white),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // 添加一个指定大小的盒子, 规定其最大最小宽高
            ConstrainedBox(
              constraints: const BoxConstraints(
                  minWidth: 100.0,
                  minHeight: 20.0,
                  maxWidth: 150.0,
                  maxHeight: 50.0),
              child: Container(
                width: 250,
                height: 88,
                color: Colors.red,
                child: Text(
                  'width<maxWidth',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            ConstrainedBox(
              constraints: const BoxConstraints(
                  minWidth: 100.0,
                  minHeight: 20.0,
                  maxWidth: 200.0,
                  maxHeight: 60.0),
              child: Container(
                width: 80,
                height: 10,
                color: Colors.red,
                child: Text(
                  'width<minWidth',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
