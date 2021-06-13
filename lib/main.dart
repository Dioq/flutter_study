import 'package:flutter/material.dart';
import 'package:flutter_study/align/AlignPage.dart';
import 'package:flutter_study/appbar/AppBarPage.dart';
import 'package:flutter_study/image/ImagePage.dart';
import 'package:flutter_study/rawmaterialbutton/RawMaterialButtonPage.dart';
import 'package:flutter_study/richtext/RichTextPage.dart';
import 'package:flutter_study/rotatedbox/RotatedBoxPage.dart';
import 'package:flutter_study/sizedbox/SizedBoxPage.dart';
import 'package:flutter_study/sliverappbar/MySliverAppBarPage.dart';
import 'package:flutter_study/snackbar/SnackBarPage.dart';
import 'package:flutter_study/tabbarview/TabBarViewPage.dart';
import 'package:flutter_study/textfield/TextFieldPage.dart';
import 'package:flutter_study/textview/TextViewPage.dart';

import 'bottomappbar/MyBottomAppBar.dart';
import 'bottomnavigationbar/BottomNavigationBarPage.dart';
import 'buttonbar/MyButtonBar.dart';
import 'card/CardPage.dart';
import 'checkbox/CheckboxPage.dart';
import 'constrainedbox/ConstrainedBoxPage.dart';
import 'decoratedbox/DecoratedBoxPage.dart';
import 'dropdownbutton/DropDownButtonPage.dart';
import 'fittedbox/FittedBoxPage.dart';
import 'floatingactionbutton/FloatingActionButtonPage.dart';
import 'iconbutton/IconButtonPage.dart';
import 'listview/BasicListViewPage.dart';
import 'listview/GridViewPage.dart';
import 'listview/HorizontalListViewPage.dart';
import 'listview/LongListViewPage.dart';
import 'navigator/NavigatorPage.dart';
import 'outlinebutton/OutlineButtonPage.dart';
import 'overflowbox/OverflowBoxPage.dart';

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
  "Checkbox": (context) {
    return new CheckboxPage();
  },
  "Card": (context) {
    return new CardPage();
  },
  "RawMaterialButton": (context) {
    return new RawMaterialButtonPage();
  },
  "OutlineButton": (context) {
    return new OutlineButtonPage();
  },
  "IconButton": (context) {
    return new IconButtonPage();
  },
  "FloatingActionButton": (context) {
    return new FloatingActionButtonPage();
  },
  "DropDownButton": (context) {
    return new DropDownButtonPage();
  },
  "SizedBox": (context) {
    return new SizedBoxPage();
  },
  "RotatedBox": (context) {
    return new RotatedBoxPage();
  },
  "OverflowBox": (context) {
    return new OverflowBoxPage();
  },
  "FittedBox": (context) {
    return new FittedBoxPage();
  },
  "DecoratedBox": (context) {
    return new DecoratedBoxPage();
  },
  "ConstrainedBox": (context) {
    return new ConstrainedBoxPage();
  },
  "BottomNavigationBar": (context) {
    return new BottomNavigationBarPage();
  },
  "TabBarView": (context) {
    return new TabBarViewPage();
  },
  "SnackBar": (context) {
    return new SnackBarPage();
  },
  "SliverAppBar": (context) {
    return new MySliverAppBarPage();
  },
  "ButtonBar": (context) {
    return new MyButtonBar();
  },
  "BottomAppBar": (context) {
    return new MyBottomAppBar();
  },
  "AppBar": (context) {
    return new AppBarPage();
  },
  "Align": (context) {
    return new AlignPage();
  },
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
