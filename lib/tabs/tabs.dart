import 'package:flutter/material.dart';
import 'package:shopping_all/pages/message.dart';
import 'package:shopping_all/pages/users.dart';
import '../pages/index.dart';
import '../pages/message.dart';
import '../pages/users.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _myPages = [
    HomeContent(),
    Message(),
    MyUser()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: this._myPages[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index){
            setState((){
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('首页')),
            BottomNavigationBarItem(icon: Icon(Icons.message),title: Text('消息')),
            BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('我的')),
          ]
        ),
      );
  }
}