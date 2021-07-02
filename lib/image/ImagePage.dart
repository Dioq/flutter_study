import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.add),
            SizedBox(height: 20),
            Image.asset("cat.png"),
            SizedBox(height: 20),
            Image.network('https://picsum.photos/250?image=9'),
          ],
        ),
      ),
    );
  }
}
