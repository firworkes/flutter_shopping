import 'package:flutter/material.dart';

class RouterDemo extends StatelessWidget {

  Map arguments;

  RouterDemo({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由demo'),
      ),
      body: RoutContent(),
    );
  }
}

class RoutContent extends StatelessWidget {
  const RoutContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RaisedButton(
          child: Text('下一步'),
          onPressed: (){
            Navigator.pushNamed(context, '/register');
          },
        )
      ],
    );
  }
}