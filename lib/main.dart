import 'package:flutter/material.dart';
import 'package:flutter_study/image/ImagePage.dart';
import 'package:flutter_study/richtext/RichTextPage.dart';
import 'package:flutter_study/textfield/TextFieldPage.dart';
import 'package:flutter_study/textview/TextViewPage.dart';

import 'listview/BasicListViewPage.dart';
import 'listview/GridViewPage.dart';
import 'listview/HorizontalListViewPage.dart';
import 'listview/LongListViewPage.dart';
import 'navigator/NavigatorPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Study',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: routers,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var routeLists = routers.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Flutter UI"),
      ),
      body: new Container(
        child: new ListView.builder(
          itemBuilder: (context, index) {
            return new InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(routeLists[index]);
              },
              child: new Card(
                child: new Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  child: new Text(routers.keys.toList()[index]),
                ),
              ),
            );
          },
          itemCount: routers.length,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Map<String, WidgetBuilder> routers = {
  "Text": (context) {
    return new TextViewPage();
  },
  "RichText": (context) {
    return new RichTextPage();
  },
  "TextField": (context) {
    return new TextFieldPage();
  },
  "Image": (context) {
    return new ImagePage();
  },
  "BasicListViewPage": (context) {
    return new BasicListViewPage();
  },
  "HorizontalListView": (context) {
    return new HorizontalListViewPage();
  },
  "LongListViewPage": (context) {
    return new LongListViewPage();
  },
  "GridViewPage": (context) {
    return new GridViewPage();
  },
  "NavigatorPage": (context) {
    return new NavigatorPage();
  },
};
