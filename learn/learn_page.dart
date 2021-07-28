import 'package:flutter/material.dart';
import 'package:manabiplus/learn/learn_list_model.dart';
import 'package:provider/provider.dart';


class LearnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff00FFD4),
          title: Center(
            child: const Text(
              "学びPlus",
              style: TextStyle(
                  fontSize: 30.0,
                  color: Color(0xff707070),
                  fontFamily: 'Material',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color(0xff00FFD4),

        ),
        body: ChangeNotifierProvider<LearnListModel>(
          create: (_) => LearnListModel(),
          child: Consumer<LearnListModel>(builder: (context, model, child) {
            return Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 6),
                    child: Text(
                      'NextStage',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ), //教材名
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '新規：２',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.double,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '復習：１',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '課題：０',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ), //残りページ数
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          model.pages[0],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xff707070),
                          ),
                        ),
                      ),
                      Text(
                        model.units[0],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xff707070),
                        ),
                      ),
                    ],
                  ), //単元名
                  SizedBox(height: 30),
                  Text(
                    'bigginer',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff707070),
                        fontWeight: FontWeight.bold),
                  ), //ランク

                  Divider(
                    color: Colors.grey,
                    indent: 30,
                    endIndent: 30,
                    thickness: 3.0,
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: <Widget>[
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            '正答率', //todo 正答率設定反映
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Color(0xff707070),
                            ),
                          ), //正答率
                          Text(
                            '評価',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Color(0xff707070),
                            ),
                          ), //todo 評価率設定反映
                          Text(
                            '次回学習日',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Color(0xff707070),
                            ),
                          ), //todo 次回学習日反映
                        ],
                      )), //表題

                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 110,
                              child: Text(
                                '75%未満',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Color(0xff707070),
                                ),
                              ),
                            ), //正答率
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 115,
                              height: 32,
                              child: FlatButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Text(
                                    "again",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Color(0xff707070),
                                      //color: Color(0xff707070),
                                    ),
                                  ),
                                ),
                                color: Color(0xffF65F5F).withOpacity(0.57),
                                shape: StadiumBorder(
                                  side: BorderSide(
                                      color: Color(0xff707070), width: 1.5),
                                ),
                                onPressed: () {},
                              ),
                            ), //ボタン
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              '本日',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color(0xff707070),
                              ),
                            )
                            /*RaisedButton(
                                    child: Text('again',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        //color: Color(0xff707070),
                                      ),
                                    ),
                                    color: Colors.red,//.withOpacity(0.9),
                                    shape: StadiumBorder(),
                                  ),*/ //again
                          ],
                        ),
                      ), //75未満

                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 110,
                              child: Text(
                                '75～85%',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Color(0xff707070),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 115,
                              height: 32,
                              child: FlatButton(
                                child: Text(
                                  'normal',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xff707070),
                                  ),
                                ),
                                color: Color(0xffCD5FF6).withOpacity(0.57),
                                shape: StadiumBorder(
                                  side: BorderSide(
                                      color: Color(0xff707070), width: 1.5),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            /*ノーマルボタン*/
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              '1日後',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color(0xff707070),
                              ),
                            )
                          ],
                        ),
                      ), //75-85

                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 110,
                              child: Text(
                                '85～95%',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25, // todo 大きさ自動修正
                                  color: Color(0xff707070),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 115,
                              height: 32,
                              child: FlatButton(
                                child: Text(
                                  'good',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color(0xff707070),
                                  ), /*good*/
                                ),
                                color: Color(0xff5FF669).withOpacity(0.57),
                                shape: StadiumBorder(
                                  side: BorderSide(
                                      color: Color(0xff707070), width: 1.5),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              '3日後',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color(0xff707070),
                              ),
                            )
                          ],
                        ),
                      ), //85-95

                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 110,
                            child: Text(
                              '95%以上',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color(0xff707070),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 120,
                            height: 32,
                            child: FlatButton(
                              child: Text(
                                'great',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Color(0xff707070),
                                ),
                              ),
                              color: Color(0xff5FABF6).withOpacity(0.57),
                              shape: StadiumBorder(
                                side: BorderSide(
                                    color: Color(0xff707070), width: 1.5),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          /*great*/
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            '1日後',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color(0xff707070),
                            ),
                          )
                        ],
                      ), //95-100
                    ],
                  ), //選択画面
                  //TODO 判断基準
                ],
              ),
            );
          }),
        ));
  }
}
