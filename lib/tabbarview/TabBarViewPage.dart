import 'package:flutter/material.dart';

class TabBarViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyTabBarView(),
    );
  }
}

class MyTabBarView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyTabBarViewState();
}

class _MyTabBarViewState extends State<MyTabBarView>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = new ScrollController();
    _tabController = new TabController(vsync: this, length: 6);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 500.0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('选项卡'),
          // 前置图标
          // leading: Icon(Icons.home),
          backgroundColor: Colors.green,
          // 选项卡
          bottom: TabBar(
            controller: _tabController,
            // 是否可以滚动
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: '科技',
                icon: Icon(Icons.camera),
              ),
              Tab(
                text: 'Tabs 2',
              ),
              Tab(
                text: 'Tabs 3',
              ),
              Tab(
                text: 'Tabs 4',
              ),
              Tab(
                text: 'Tabs 5',
              ),
              Tab(
                text: 'Tabs 6',
              ),
            ],
          ),
        ),
        // 选项卡视图
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Text('选项卡1'),
            Text('选项卡2'),
            Text('选项卡3'),
            Text('选项卡4'),
            Text('选项卡5'),
            Text('选项卡6'),
          ],
        ),
      ),
    );
  }
}
