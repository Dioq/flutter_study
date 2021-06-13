import 'package:flutter/material.dart';

class FittedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 100.0,
              height: 100.0,
              child: FittedBox(
                // 填充类型
                /*
                * .fill         全部显示,显示可能拉伸,充满
                * .contain      全部显示,显示原比例,不需充满
                * .cover        显示可能拉伸,可能裁剪,充满
                * .fitWidth     显示可能拉伸,可能裁剪,宽度充满
                * .filHeigh     显示可能拉伸,可能裁剪,高度充满
                * .scaleDown    效果和contain差不多,但是此属性不允许显示超过图片大小,可小不可大
                * */
                fit: BoxFit.cover,
                alignment: Alignment.center,
                child: Container(
                  color: Colors.green,
                  child: Text(
                    'BoxFit , a test string',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
