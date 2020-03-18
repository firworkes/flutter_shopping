import 'package:flutter/material.dart';
import 'router/Router.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: '/',
      // home: Tabs(),
      onGenerateRoute: onGenerateRoute
    );
  }
}

