import 'package:flutter/material.dart';
import '../res/listData.dart';

class ShoppingItme extends StatefulWidget {
  ShoppingItme({Key key}) : super(key: key);

  @override
  _ShoppingItmeState createState() => _ShoppingItmeState();
}

class _ShoppingItmeState extends State<ShoppingItme> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        children: listData.map((value){
          return
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
              child: Card(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 20/9,
                      child: Image.network(value['imageUrl'],fit: BoxFit.cover,),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(height: 15,),
                            Text(value['title']),
                            SizedBox(height: 15,),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('￥7.50', style: TextStyle(color: Colors.red)),
                                Text('41人想要')
                              ],
                            ),
                          SizedBox(height: 10,),

                            Row(
                              children: <Widget>[
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: CircleAvatar(backgroundImage: NetworkImage(value['imageUrl'])),

                                ),
                                SizedBox(width: 5),
                                Text(value['author'])
                              ],
                            )
                        ],
                      )
                    )
                  
                  ],
                ),
              )
            );
        }).toList()
      )
    );
  }
}