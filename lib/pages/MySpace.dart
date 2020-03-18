import 'package:flutter/material.dart';

class MySpace extends StatefulWidget {
  MySpace({Key key}) : super(key: key);

  @override
  _MySpaceState createState() => _MySpaceState();
}

class _MySpaceState extends State<MySpace> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                
                child: TabBar(
                  indicatorColor: Colors.orange, //下划线颜色
                  labelColor: Colors.orange, //点击字体颜色
                  unselectedLabelColor: Colors.white, //不选中颜色

                  tabs: <Widget> [
                    Tab(text:'连载'),
                    Tab(text:'笔记'),
                    Tab(text:'搜索')
                  ])

              )
            ],
          )
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(children: <Widget>[
              ListTile(
                title: Text('第一个内容'),
              ),ListTile(
                title: Text('第一个内容'),
              ),ListTile(
                title: Text('第一个内容'),
              ),
            ],),

            ListView(children: <Widget>[
              ListTile(
                title: Text('第二个内容'),
              ),ListTile(
                title: Text('第二个内容'),
              ),ListTile(
                title: Text('第二个内容'),
              ),
            ],),

            ListView(children: <Widget>[
              ListTile(
                title: Text('第三个内容'),
              ),ListTile(
                title: Text('第三个内容'),
              ),ListTile(
                title: Text('第三个内容'),
              ),
            ],),

          ],
        ),
      )
    );
  }
}