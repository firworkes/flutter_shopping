import 'package:flutter/material.dart';
import 'package:shopping_all/pages/message.dart';
import 'package:shopping_all/pages/users.dart';
import '../pages/index.dart';
import '../pages/message.dart';
import '../pages/users.dart';
import '../pages/MySpace.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index=0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  
  _TabsState(index){
    this._currentIndex = index;
  }


  List _myPages = [
    HomeContent(),
    Message(),
    MySpace(),
    MyUser()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('首页'),
        // ),
        body: this._myPages[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(

          type: BottomNavigationBarType.fixed,
          currentIndex: this._currentIndex,
          onTap: (int index){
            setState((){
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('首页')),
            BottomNavigationBarItem(icon: Icon(Icons.message),title: Text('消息')),
            BottomNavigationBarItem(icon: Icon(Icons.message),title: Text('空间')),
            BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('我的')),
          ]
        ),
      );
  }
}