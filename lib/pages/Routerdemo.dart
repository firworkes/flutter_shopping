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
      body: Text('这是路由传的值${arguments}'),
    );
  }
}