import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network('https://picsum.photos/250?image=9');
  }
}
