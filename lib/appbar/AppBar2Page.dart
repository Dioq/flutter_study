import 'package:flutter/material.dart';

class AppBar2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      // 主题
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Navigation'),
        // 标题居中
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation',
          onPressed: () {
            print('click navigation button');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Navigation',
            onPressed: () {
              print('Search button is pressed.');
            },
          ),
          IconButton(
            icon: Icon(Icons.more_horiz),
            tooltip: 'Navigation',
            onPressed: () {
              print('more button is pressed.');
            },
          )
        ],
      ),
    );
  }
}
