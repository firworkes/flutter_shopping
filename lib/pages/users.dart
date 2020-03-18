import 'package:flutter/material.dart';
import 'Routerdemo.dart';

class MyUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('个人设置')
      // ),
      body: UserContent(),
    );
  }
}

class UserContent extends StatelessWidget {
  const UserContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('按钮'),
          onPressed: (){
            Navigator.pushNamed(context, '/routerdemo',arguments: {'id':123456});
          },
        ),
        RaisedButton(
          child: Text('有状态路由传参'),
          onPressed: (){
            Navigator.pushNamed(context, '/routedemo2',arguments: {'id':654321});
          },
        ),
      ]
    );
  }
}