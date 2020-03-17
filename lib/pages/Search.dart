import 'package:flutter/material.dart';
import '../res/listData.dart';
import '../components/ShoppingItem.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品搜索页面'),
      ),
      body: SearchItem(),
    );
  }
}

class SearchItem extends StatefulWidget {
  SearchItem({Key key}) : super(key: key);

  @override
  _SearchItemState createState() => _SearchItemState();
}

class _SearchItemState extends State<SearchItem> {
  @override
  Widget build(BuildContext context) {
    return ShoppingItme();
  }
}