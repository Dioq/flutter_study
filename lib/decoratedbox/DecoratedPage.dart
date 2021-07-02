import 'package:flutter/material.dart';

class DecoratedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Decorated'),
      ),
      body: Container(
        // color: Colors.grey[100],
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('cat.png'),
            alignment: Alignment.topCenter,
            // 重复模式
            // repeat: ImageRepeat.repeatX,
            // 适配模式
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.indigoAccent[400]!.withOpacity(0.5),
              BlendMode.hardLight,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Icon(Icons.pool, size: 32.0, color: Colors.white),
              padding: EdgeInsets.all(6.0),
              margin: EdgeInsets.all(8.0),
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(2, 54, 255, 1.0),
                // 圆角
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                // BorderRadius.circular(16),
                // 阴影
                boxShadow: [
                  BoxShadow(
                    offset: Offset(6.0, 7.0),
                    color: Color.fromRGBO(16, 20, 188, 1.0),
                    // 模糊程度
                    blurRadius: 5.0,
                    // 阴影扩散程度,正数扩大阴影 负数缩小阴影
                    spreadRadius: 2.0,
                  )
                ],
                // 镜像渐变
                /*gradient: RadialGradient(
                  colors: [
                    Color.fromRGBO(1, 102, 255, 1.0),
                    Color.fromRGBO(2, 28, 128, 1.0),
                  ],
                ),*/
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(1, 102, 255, 1.0),
                    Color.fromRGBO(2, 28, 128, 1.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                // 边框
                border: Border.all(
                  color: Colors.red,
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
                /*Border(
                  top: BorderSide(
                    color: Colors.red,
                    width: 3.0,
                    style: BorderStyle.solid,
                  ),
                  bottom: BorderSide(
                    color: Colors.green,
                    width: 3.0,
                    style: BorderStyle.solid,
                  ),
                ),*/
              ),
            ),
          ],
        ),
      ),
    );
  }
}
