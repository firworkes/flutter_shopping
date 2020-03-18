import 'package:flutter/material.dart';
import '../res/listData.dart';
import '../components/ShoppingItem.dart';

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        SizedBox(height:15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset('images/phone.png',height: 35),
                SizedBox(height: 10),
                Text('二手手机')
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset('images/game.png',height: 35),
                SizedBox(height: 10),
                Text('游戏交易')
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset('images/book.png',height: 35),
                SizedBox(height: 10),
                Text('二手图书')
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset('images/shoes.png',height: 35),
                SizedBox(height: 10),
                Text('潮品')
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset('images/svg_classify_select.png',height: 35),
                SizedBox(height: 10),
                Text('分类')
              ],
            ),
          ],
        ),
        
        //卡片商品
        SizedBox(height:15),
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height:15),
                  Text('咸鱼玩家'),
                  SizedBox(height:10),

                  Row(
                    children: <Widget>[
                      Image.network('https://img2.woyaogexing.com/2020/03/14/4a3452f103364b7dad9c77bd61871d5a!350x350.jpeg',height:90,width:90),
                      SizedBox(width:3),
                      Image.network('https://img2.woyaogexing.com/2020/03/16/6f7e4ae21c4c43cdb5f6f76e2a1e9fd9!350x350.jpeg',height:90,width:90)
                    ],
                  ),
                  SizedBox(height:15),
                  Row(
                    children: <Widget>[
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('租房'),
                          Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584371980005&di=c126b931bbd7c842e6686623d65ae621&imgtype=0&src=http%3A%2F%2Fstatic-xiaoguotu.17house.com%2F000%2F290%2F201357092017043793.jpg',height:90,width:90)
                        ],
                      ),
                      SizedBox(width: 3),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('租借'),
                          Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3762255589,2750189595&fm=26&gp=0.jpg',height:90,width:90)
                        ],
                      )
                    ],
                  )
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height:15),
                  Text('咸鱼直播'),
                  SizedBox(height:10),

                  Row(
                    children: <Widget>[
                      Image.network('https://img2.woyaogexing.com/2020/03/14/76fb28bd35454fb2a20a5d174421d12e!350x350.jpeg',height:90,width:90),
                      SizedBox(width:3),
                      Image.network('https://img2.woyaogexing.com/2020/03/13/89481ef2da5d41199efa3bb5e5be4c75!350x350.jpeg',height:90,width:90)
                    ],
                  ),
                  SizedBox(height:15),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('优品捡漏'),
                          Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1984799917,3437793353&fm=26&gp=0.jpg',height:90,width:90)
                        ],
                      ),
                      SizedBox(width: 3),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('值得买'),
                          Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3767793585,2897926487&fm=26&gp=0.jpg',height:90,width:90)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),

        Card(
          child: Container(
            height: 120.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(35, 0, 0, 5),
                  child: Text('卖闲置换钱'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[
                    Container(
                      height: 70.0,
                      width: 120.0,
                      color: Color.fromARGB(235, 235, 235, 235),
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('上门回收',style: TextStyle(color: Colors.red)),
                                  Text('57类免费上门',style: TextStyle(fontSize: 12))
                                ],
                              ),
                              Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=89316953,2435880867&fm=11&gp=0.jpg',height:35,width: 20)
                            ],
                          )
                        ]
                      ),
                    ),
                    Container(
                      height: 70.0,
                      width: 120.0,
                      color: Color.fromARGB(235, 235, 235, 235),
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('旧物换礼',style: TextStyle(color: Colors.green)),
                                  Text('免费换10斤水果',style: TextStyle(fontSize: 12))
                                ],
                              ),
                              Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=89316953,2435880867&fm=11&gp=0.jpg',height:35,width: 20)
                            ],
                          )
                        ]
                      ),
                    ),

                    Container(
                      height: 70.0,
                      width: 120.0,
                      color: Color.fromARGB(235, 235, 235, 235),
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('什么值得卖',style: TextStyle(color: Colors.orange)),
                                  Text('超多人求购',style: TextStyle(fontSize: 12))
                                ],
                              ),
                              Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=89316953,2435880867&fm=11&gp=0.jpg',height:35,width: 20)
                            ],
                          )
                        ]
                      ),
                    ),

                  ],
                )
              ],
            )
          )
          
        ),
        SizedBox(height: 15,),
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: listData.map((value){
                return 
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                    color: Colors.white,
                    width: 230.0,
                    child: Column(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 20/9,
                          child: Image.network(value['imageUrl'],fit: BoxFit.cover,),
                        ),
                        ListTile(
                          title: Text(value['title']),
                          subtitle: Text('￥23.50',style: TextStyle(color: Colors.red)),
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 16),
                            Container(
                              width: 20,
                              height: 20,
                              child: CircleAvatar(backgroundImage: NetworkImage(value['imageUrl'])),
                            ),
                            SizedBox(width: 7),
                            Text(value['author'])
                          ],
                        )
                      ],
                    ),
                  );
              }).toList()
              
            ),
          ],
        )
      ],
    );
  }
}