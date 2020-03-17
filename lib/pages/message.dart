import 'package:flutter/material.dart';
import '../pages/Search.dart';

class Message extends StatefulWidget {
  Message({Key key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: RaisedButton(
        child: Text('跳转到搜索页面'),
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=> Search())
          );
        },
       )
    );
  }
}