import 'package:flutter/material.dart';

class RichTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(style: TextStyle(fontSize: 18), children: [
        TextSpan(text: "红色", style: TextStyle(color: Colors.red)),
        TextSpan(
          text: "加粗",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text: "字号+",
          style: TextStyle(color: Colors.black, fontSize: 25.0),
        ),
        TextSpan(
          text: "字号-",
          style: TextStyle(color: Colors.black, fontSize: 12.0),
        ),
      ]),
      textDirection: TextDirection.ltr,
    );
  }
}
