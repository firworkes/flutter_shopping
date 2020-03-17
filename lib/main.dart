import 'package:flutter/material.dart';
import 'res/listData.dart';
import 'tabs/tabs.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Tabs()
    );
  }
}

