import 'package:flutter/material.dart';
import '../tabs/tabs.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册页面'),
      ),
      body: RegisterContent(),
    );
  }
}

class RegisterContent extends StatefulWidget {
  RegisterContent({Key key}) : super(key: key);

  @override
  _RegisterContentState createState() => _RegisterContentState();
}

class _RegisterContentState extends State<RegisterContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RaisedButton(
          child: Text('注册完成'),
          onPressed: (){
            // Navigator.of(context).pushReplacementNamed('/routerdemo');  替换路由，直接返回指定根页面
            Navigator.of(context).pushAndRemoveUntil(  //返回指定tabs页面
              MaterialPageRoute(builder: (context) => Tabs(index: 2)),
              (route) => route == null
            );
          },
        )
      ],
    );
  }
}