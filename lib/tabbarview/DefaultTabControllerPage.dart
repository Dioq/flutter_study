import 'package:flutter/material.dart';

class TabBarView2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
      // 主题
      theme: ThemeData(
          primaryColor: Colors.yellow,
          // 高亮
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.red),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Navigation 2'),
          // 标题居中
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.home),
            tooltip: 'Navigation',
            onPressed: () {
              print('click navigation button');
            },
          ),
          bottom: TabBar(
            // 未被选中的颜色
            unselectedLabelColor: Colors.black38,
            // 底部横线的颜色
            indicatorColor: Colors.red,
            // 底部横线 与 上面标题一样长
            indicatorSize: TabBarIndicatorSize.label,
            // 底部横线 粗度
            indicatorWeight: 3.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Tab(
                icon: Icon(Icons.local_florist,
                    size: 128.0, color: Colors.black12)),
            Tab(
                icon: Icon(Icons.change_history,
                    size: 128.0, color: Colors.black12)),
            Tab(
                icon: Icon(Icons.directions_bike,
                    size: 128.0, color: Colors.black12)),
          ],
        ),
        // 右抽屉
        endDrawer: Text('This is draw'),
        // 左抽屉
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // DrawerHeader(
              //   child: Text('header'.toUpperCase()),
              //   decoration: BoxDecoration(
              //     color: Colors.grey[100],
              //   ),
              // ),
              UserAccountsDrawerHeader(
                accountName: Text(
                  'Dio',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                accountEmail: Text(
                  'Dio88JJJO@136.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: ExactAssetImage(
                        'cat.png') //NetworkImage('https://picsum.photos/250?image=9'),
                    ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/250?image=9'),
                      // 填充方式
                      fit: BoxFit.cover,
                      // 颜色虑镜
                      colorFilter: ColorFilter.mode(
                        Colors.yellow[400]!.withOpacity(0.6),
                        BlendMode.hardLight,
                      )),
                ),
              ),
              ListTile(
                title: Text(
                  'Message',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.message,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Favorite',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Settings',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.settings,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
