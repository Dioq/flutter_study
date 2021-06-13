import 'package:flutter/material.dart';

class OutlineButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OutlineButton'),
      ),
      body: Column(
        children: <Widget>[
          OutlinedButton(
            child: Text('这是一段标题'),
            onPressed: () {
              print('touch here');
            },
          ),
          OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add'))
        ],
      ),
    );
  }
}
