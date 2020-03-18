import 'package:flutter/material.dart';

class RouteDemo2 extends StatefulWidget {
  final arguments;
  RouteDemo2({Key key,this.arguments}) : super(key: key);

  @override
  _RouteDemo2State createState() => _RouteDemo2State(arguments:this.arguments);
}

class _RouteDemo2State extends State<RouteDemo2> {
  Map arguments;
  _RouteDemo2State({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由传参2'),
      ),
       body: Text('路由传值${arguments}'),
    );
  }
}