import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航栏'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.print),
            tooltip: '打印',
            onPressed: () {
              print('打印');
            },
          ),
          IconButton(
            icon: Icon(Icons.more),
            tooltip: '更多',
            onPressed: () {
              print('更多');
            },
          ),
          IconButton(
            icon: Icon(Icons.share),
            tooltip: '分享',
            onPressed: () {
              print('分享');
            },
          ),
          IconButton(
            icon: Icon(Icons.plus_one),
            tooltip: '添加',
            onPressed: () {
              print('添加');
            },
          )
        ],
      ),
      body: MyAppBar(),
    );
  }
}

class MyAppBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: AppBar(
        title: Text('标题'),
        // 左侧图标
        leading: Icon(Icons.menu),
        //背景色
        backgroundColor: Colors.green,
        //剧中标题
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.plus_one),
            tooltip: '添加',
            onPressed: () {
              print('添加');
            },
          ),
          //菜单按钮
          PopupMenuButton<String>(
              itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                    //菜单项
                    PopupMenuItem<String>(
                        value: 'friend', child: Text('分享到朋友圈')),
                    PopupMenuItem<String>(
                        value: 'download', child: Text('下载到本地'))
                  ])
        ],
      ),
    );
  }
}
