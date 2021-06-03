import 'package:flutter/material.dart';

class LongListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var items = <String>[];
    for (int i = 0; i < 1000; i++) {
      items.add("row = $i");
    }
    final title = 'Long List';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
