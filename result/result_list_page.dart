import 'package:flutter/material.dart';
import 'package:manabiplus/learn/learn_list_model.dart';
import 'package:manabiplus/learn/learn_page.dart';
import 'package:provider/provider.dart';
import 'package:manabiplus/result/text_result_list.page.dart';

class ResultListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ChangeNotifierProvider<LearnListModel>(
        create: (_) => LearnListModel(),
        child: Consumer<LearnListModel>(builder: (context, model, child) {
          return Padding(
            padding: const EdgeInsets.only(top: 15, left: 13.0, right: 8.0),
            child: Column(
              children: <Widget>[
                Text(
                  "教材の一覧",

                  style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xff707070),
                      fontFamily: 'Material',
                      fontWeight: FontWeight.bold),
                ),//教材一覧
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TextResultListPage(),//todo 繊維方法
                        fullscreenDialog: true,
                      ),
                    );
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                        Container(
                          child: Column(
                            children: <Widget>[
                              Text('NextStage',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontFamily: 'Material',
                                    fontWeight: FontWeight.bold),
                                                        ),
                              Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        spreadRadius: 1.0,
                                        blurRadius: 10.0,
                                        offset: Offset(0, 11),
                                      ),
                                    ]
                                ),
                                child: Card(
                                  child: Container(
                                    //width: 400 ,
                                    height: 300,
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 10, right: 10, bottom: 10),
                                              child: Container(
                                                child: Column(
                                                  children: <Widget>[
                                                    Text('学習進捗',
                                                      style: TextStyle(
                                                          fontSize: 20.0,
                                                          fontFamily: 'Material',
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 15,bottom: 9),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Text('Beginner',
                                                            style: TextStyle(
                                                                fontSize: 20.0,
                                                                color: Color(0xff707070),
                                                                fontFamily: 'Material',
                                                                fontWeight: FontWeight.bold),

                                                          ),

                                                          Padding(
                                                            padding: const EdgeInsets.only(left:10),
                                                            child: Text('50%',
                                                              style: TextStyle(
                                                                fontSize: 20.0,
                                                                color: Color(0xff707070),
                                                                fontFamily: 'Material',
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ), //beginner

                                                    ),//Beginner
                                                    Padding(
                                                      padding: const EdgeInsets.only(bottom: 9),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Container(
                                                            color: Color(0xffF20E15).withOpacity(0.25),
                                                            width: 80,
                                                            height:30,
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                              child: Text('Normal',
                                                                style: TextStyle(
                                                                    fontSize: 20.0,
                                                                    color: Color(0xff707070),
                                                                    fontFamily: 'Material',
                                                                    fontWeight: FontWeight.bold),

                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:15),
                                                            child: Text('50%',
                                                              style: TextStyle(
                                                                fontSize: 20.0,
                                                                color: Color(0xff707070),
                                                                fontFamily: 'Material',
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ), //beginner

                                                    ),//Normal
                                                    Padding(
                                                      padding: const EdgeInsets.only(bottom: 9),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Container(
                                                            color: Color(0xffFFA250).withOpacity(0.7),
                                                            width: 80,
                                                            height: 30,
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                              child: Text('Super',

                                                                style: TextStyle(
                                                                    fontSize: 20.0,
                                                                    color: Color(0xff707070),
                                                                    fontFamily: 'Material',
                                                                    fontWeight: FontWeight.bold),

                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:15),
                                                            child: Text('50%',
                                                              style: TextStyle(
                                                                fontSize: 20.0,
                                                                color: Color(0xff707070),
                                                                fontFamily: 'Material',
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ), //beginner

                                                    ),//Super
                                                    Padding(
                                                      padding: const EdgeInsets.only(bottom: 9),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Container(
                                                            color: Color(0xffA5FFBD).withOpacity(0.9),
                                                            width: 80,
                                                            height: 30,
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                              child: Text('Hyper',
                                                                style: TextStyle(
                                                                    fontSize: 20.0,
                                                                    color: Color(0xff707070),
                                                                    fontFamily: 'Material',
                                                                    fontWeight: FontWeight.bold),

                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:15),
                                                            child: Text('50%',
                                                              style: TextStyle(
                                                                fontSize: 20.0,
                                                                color: Color(0xff707070),
                                                                fontFamily: 'Material',
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ), //beginner

                                                    ),//Hyper
                                                    Padding(
                                                      padding: const EdgeInsets.only(bottom: 9),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Container(
                                                            color: Color(0xff6EFFFF).withOpacity(0.8),
                                                            width: 80,
                                                            height: 30,
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                              child: Text('Master',
                                                                style: TextStyle(
                                                                    fontSize: 20.0,
                                                                    color: Color(0xff707070),
                                                                    fontFamily: 'Material',
                                                                    fontWeight: FontWeight.bold),

                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:15),
                                                            child: Text('50%',
                                                              style: TextStyle(
                                                                fontSize: 20.0,
                                                                color: Color(0xff707070),
                                                                fontFamily: 'Material',
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ), //beginner

                                                    ),//Master
                                                    Padding(
                                                      padding: const EdgeInsets.only(bottom: 9),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Container(
                                                            color: Color(0xff6F6F6F).withOpacity(0.405),
                                                            width: 80,
                                                            height: 30,
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                              child: Text('Bad',
                                                                style: TextStyle(
                                                                    fontSize: 20.0,
                                                                    color: Color(0xff707070),
                                                                    fontFamily: 'Material',
                                                                    fontWeight: FontWeight.bold),

                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:15),
                                                            child: Text('50%',
                                                              style: TextStyle(
                                                                fontSize: 20.0,
                                                                color: Color(0xff707070),
                                                                fontFamily: 'Material',
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ), //beginner

                                                    ),//Bad
                                                    //Bad
                                                  ],
                                                ),
                                                //width: 150,
                                                //height: 200,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 50, top: 10, right: 10, bottom: 10),
                                                  child: Container(
                                                    child: Column(
                                                      children: <Widget>[
                                                        Text('カリキュラム一覧',
                                                          style: TextStyle(
                                                              fontSize: 20.0,
                                                              fontFamily: 'Material',
                                                              fontWeight: FontWeight.bold),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 15,bottom: 9),
                                                          child: Container(
                                                            color: Color(0xffF20E15).withOpacity(0.25),
                                                            width: 187,

                                                            child: Text('現在完了・未来完了',//todo 文字数制限
                                                              overflow: TextOverflow.ellipsis,
                                                              style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold),


                                                            ),
                                                          ), //beginner

                                                        ),//Beginner
                                                        Padding(
                                                          padding: const EdgeInsets.only(bottom: 9),
                                                          child: Row(
                                                            children: <Widget>[
                                                              Container(
                                                                color: Color(0xffF20E15).withOpacity(0.25),
                                                                
                                                                height:30,
                                                                child: Padding(
                                                                  padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                  child: Text('原則として進行形に',
                                                                    style: TextStyle(
                                                                        fontSize: 20.0,
                                                                        color: Color(0xff707070),
                                                                        fontFamily: 'Material',
                                                                        fontWeight: FontWeight.bold),

                                                                  ),
                                                                ),
                                                              ),

                                                            ],
                                                          ), //beginner

                                                        ),//Normal
                                                        Padding(
                                                          padding: const EdgeInsets.only(bottom: 9),
                                                          child: Row(
                                                            children: <Widget>[
                                                              Container(
                                                                width: 187,
                                                                height: 30,
                                                                child: Padding(
                                                                  padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                  child: Text('現在完了形のhave',

                                                                    style: TextStyle(
                                                                        fontSize: 20.0,
                                                                        color: Color(0xff707070),
                                                                        fontFamily: 'Material',
                                                                        fontWeight: FontWeight.bold),

                                                                  ),
                                                                ),
                                                              ),

                                                            ],
                                                          ), //beginner

                                                        ),//Super
                                                        Padding(
                                                          padding: const EdgeInsets.only(bottom: 9),
                                                          child: Row(
                                                            children: <Widget>[
                                                              Container(
                                                                color: Color(0xffA5FFBD).withOpacity(0.9),
                                                                width: 187,
                                                                height: 30,
                                                                child: Padding(
                                                                  padding: const EdgeInsets.only(top:1,left:4,bottom:1),
                                                                  child: Text('基本(現在・過去・未来)',
                                                                    style: TextStyle(
                                                                        fontSize: 20.0,
                                                                        color: Color(0xff707070),
                                                                        fontFamily: 'Material',
                                                                        fontWeight: FontWeight.bold),

                                                                  ),
                                                                ),
                                                              ),

                                                            ],
                                                          ), //beginner

                                                        ),//Hyper
                                                        Padding(
                                                          padding: const EdgeInsets.only(bottom: 9),
                                                          child: Row(
                                                            children: <Widget>[
                                                              Container(
                                                                color: Color(0xffFFA250).withOpacity(0.7),
                                                                width: 187,
                                                                height: 30,
                                                                child: Padding(
                                                                  padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                  child: Text('進行形の用法',
                                                                    style: TextStyle(
                                                                        fontSize: 20.0,
                                                                        color: Color(0xff707070),
                                                                        fontFamily: 'Material',
                                                                        fontWeight: FontWeight.bold),

                                                                  ),
                                                                ),
                                                              ),

                                                            ],
                                                          ), //beginner

                                                        ),//Master
                                                        Padding(
                                                          padding: const EdgeInsets.only(bottom: 9),
                                                          child: Row(
                                                            children: <Widget>[
                                                              Container(
                                                                color: Color(0xff6F6F6F).withOpacity(0.405),
                                                                width: 187,
                                                                height: 30,
                                                                child: Padding(
                                                                  padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                  child: Text('完了進行形(have been to)',
                                                                    style: TextStyle(
                                                                        fontSize: 20.0,
                                                                        color: Color(0xff707070),
                                                                        fontFamily: 'Material',
                                                                        fontWeight: FontWeight.bold),

                                                                  ),
                                                                ),
                                                              ),

                                                            ],
                                                          ), //beginner

                                                        ),//Bad
                                                        //Bad
                                                      ],
                                                    ),
                                                    //width: 150,
                                                    //height: 200,
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),//学習進捗
                                ),
                              ),
                              SizedBox(height:30.0),
                            ],
                          ),
                        ),



                        ],
                      ),

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LearnPage(),//todo
                        fullscreenDialog: true,
                      ),
                    );
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            child: Column(
                              children: <Widget>[
                                Text('NextStage',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: 'Material',
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          spreadRadius: 1.0,
                                          blurRadius: 10.0,
                                          offset: Offset(0, 11),
                                        ),
                                      ]
                                  ),
                                  child: Card(
                                    child: Container(
                                      width: 400 ,
                                      height: 300,
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10, top: 10, right: 10, bottom: 10),
                                                child: Container(
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text('学習進捗',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            fontFamily: 'Material',
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 15,bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text('Beginner',
                                                              style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold),

                                                            ),

                                                            Padding(
                                                              padding: const EdgeInsets.only(left:10),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Beginner
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xffF20E15).withOpacity(0.25),
                                                              width: 80,
                                                              height:30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Normal',
                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Normal
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xffFFA250).withOpacity(0.7),
                                                              width: 80,
                                                              height: 30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Super',

                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Super
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xffA5FFBD).withOpacity(0.9),
                                                              width: 80,
                                                              height: 30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Hyper',
                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Hyper
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xff6EFFFF).withOpacity(0.8),
                                                              width: 80,
                                                              height: 30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Master',
                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Master
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xff6F6F6F).withOpacity(0.405),
                                                              width: 80,
                                                              height: 30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Bad',
                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Bad
                                                      //Bad
                                                    ],
                                                  ),
                                                  //width: 150,
                                                  //height: 200,
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 50, top: 10, right: 10, bottom: 10),
                                                    child: Container(
                                                      child: Column(
                                                        children: <Widget>[
                                                          Text('カリキュラム一覧',
                                                            style: TextStyle(
                                                                fontSize: 20.0,
                                                                fontFamily: 'Material',
                                                                fontWeight: FontWeight.bold),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 15,bottom: 9),
                                                            child: Container(
                                                              color: Color(0xffF20E15).withOpacity(0.25),
                                                              width: 187,

                                                              child: Text('現在完了・未来完了',//todo 文字数制限
                                                                overflow: TextOverflow.ellipsis,
                                                                style: TextStyle(
                                                                    fontSize: 20.0,
                                                                    color: Color(0xff707070),
                                                                    fontFamily: 'Material',
                                                                    fontWeight: FontWeight.bold),


                                                              ),
                                                            ), //beginner

                                                          ),//Beginner
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  color: Color(0xffF20E15).withOpacity(0.25),
                                                                  width: 187,
                                                                  height:30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                    child: Text('原則として進行形に',
                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Normal
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  width: 187,
                                                                  height: 30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                    child: Text('現在完了形のhave',

                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Super
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  color: Color(0xffA5FFBD).withOpacity(0.9),
                                                                  width: 187,
                                                                  height: 30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:1,left:4,bottom:1),
                                                                    child: Text('基本(現在・過去・未来)',
                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Hyper
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  color: Color(0xffFFA250).withOpacity(0.7),
                                                                  width: 187,
                                                                  height: 30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                    child: Text('進行形の用法',
                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Master
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  color: Color(0xff6F6F6F).withOpacity(0.405),
                                                                  width: 187,
                                                                  height: 30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                    child: Text('完了進行形(have been to)',
                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Bad
                                                          //Bad
                                                        ],
                                                      ),
                                                      //width: 150,
                                                      //height: 200,
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),//学習進捗
                                  ),
                                ),
                                SizedBox(height:30.0),
                              ],
                            ),
                          ),



                        ],
                      ),

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LearnPage(),//todo
                        fullscreenDialog: true,
                      ),
                    );
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            child: Column(
                              children: <Widget>[
                                Text('NextStage',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: 'Material',
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          spreadRadius: 1.0,
                                          blurRadius: 10.0,
                                          offset: Offset(0, 11),
                                        ),
                                      ]
                                  ),
                                  child: Card(
                                    child: Container(
                                      width: 400 ,
                                      height: 300,
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10, top: 10, right: 10, bottom: 10),
                                                child: Container(
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text('学習進捗',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            fontFamily: 'Material',
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 15,bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text('Beginner',
                                                              style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold),

                                                            ),

                                                            Padding(
                                                              padding: const EdgeInsets.only(left:10),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Beginner
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xffF20E15).withOpacity(0.25),
                                                              width: 80,
                                                              height:30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Normal',
                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Normal
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xffFFA250).withOpacity(0.7),
                                                              width: 80,
                                                              height: 30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Super',

                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Super
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xffA5FFBD).withOpacity(0.9),
                                                              width: 80,
                                                              height: 30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Hyper',
                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Hyper
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xff6EFFFF).withOpacity(0.8),
                                                              width: 80,
                                                              height: 30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Master',
                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Master
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xff6F6F6F).withOpacity(0.405),
                                                              width: 80,
                                                              height: 30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Bad',
                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Bad
                                                      //Bad
                                                    ],
                                                  ),
                                                  //width: 150,
                                                  //height: 200,
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 50, top: 10, right: 10, bottom: 10),
                                                    child: Container(
                                                      child: Column(
                                                        children: <Widget>[
                                                          Text('カリキュラム一覧',
                                                            style: TextStyle(
                                                                fontSize: 20.0,
                                                                fontFamily: 'Material',
                                                                fontWeight: FontWeight.bold),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 15,bottom: 9),
                                                            child: Container(
                                                              color: Color(0xffF20E15).withOpacity(0.25),
                                                              width: 187,

                                                              child: Text('現在完了・未来完了',//todo 文字数制限
                                                                overflow: TextOverflow.ellipsis,
                                                                style: TextStyle(
                                                                    fontSize: 20.0,
                                                                    color: Color(0xff707070),
                                                                    fontFamily: 'Material',
                                                                    fontWeight: FontWeight.bold),


                                                              ),
                                                            ), //beginner

                                                          ),//Beginner
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  color: Color(0xffF20E15).withOpacity(0.25),
                                                                  width: 187,
                                                                  height:30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                    child: Text('原則として進行形に',
                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Normal
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  width: 187,
                                                                  height: 30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                    child: Text('現在完了形のhave',

                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Super
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  color: Color(0xffA5FFBD).withOpacity(0.9),
                                                                  width: 187,
                                                                  height: 30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:1,left:4,bottom:1),
                                                                    child: Text('基本(現在・過去・未来)',
                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Hyper
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  color: Color(0xffFFA250).withOpacity(0.7),
                                                                  width: 187,
                                                                  height: 30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                    child: Text('進行形の用法',
                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Master
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  color: Color(0xff6F6F6F).withOpacity(0.405),
                                                                  width: 187,
                                                                  height: 30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                    child: Text('完了進行形(have been to)',
                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Bad
                                                          //Bad
                                                        ],
                                                      ),
                                                      //width: 150,
                                                      //height: 200,
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),//学習進捗
                                  ),
                                ),
                                SizedBox(height:30.0),
                              ],
                            ),
                          ),



                        ],
                      ),

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LearnPage(),//todo
                        fullscreenDialog: true,
                      ),
                    );
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            child: Column(
                              children: <Widget>[
                                Text('NextStage',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: 'Material',
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          spreadRadius: 1.0,
                                          blurRadius: 10.0,
                                          offset: Offset(0, 11),
                                        ),
                                      ]
                                  ),
                                  child: Card(
                                    child: Container(
                                      width: 400 ,
                                      height: 300,
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10, top: 10, right: 10, bottom: 10),
                                                child: Container(
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text('学習進捗',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            fontFamily: 'Material',
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 15,bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text('Beginner',
                                                              style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold),

                                                            ),

                                                            Padding(
                                                              padding: const EdgeInsets.only(left:10),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Beginner
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xffF20E15).withOpacity(0.25),
                                                              width: 80,
                                                              height:30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Normal',
                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Normal
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xffFFA250).withOpacity(0.7),
                                                              width: 80,
                                                              height: 30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Super',

                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Super
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xffA5FFBD).withOpacity(0.9),
                                                              width: 80,
                                                              height: 30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Hyper',
                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Hyper
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xff6EFFFF).withOpacity(0.8),
                                                              width: 80,
                                                              height: 30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Master',
                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Master
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 9),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              color: Color(0xff6F6F6F).withOpacity(0.405),
                                                              width: 80,
                                                              height: 30,
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                child: Text('Bad',
                                                                  style: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Color(0xff707070),
                                                                      fontFamily: 'Material',
                                                                      fontWeight: FontWeight.bold),

                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:15),
                                                              child: Text('50%',
                                                                style: TextStyle(
                                                                  fontSize: 20.0,
                                                                  color: Color(0xff707070),
                                                                  fontFamily: 'Material',
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ), //beginner

                                                      ),//Bad
                                                      //Bad
                                                    ],
                                                  ),
                                                  //width: 150,
                                                  //height: 200,
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 50, top: 10, right: 10, bottom: 10),
                                                    child: Container(
                                                      child: Column(
                                                        children: <Widget>[
                                                          Text('カリキュラム一覧',
                                                            style: TextStyle(
                                                                fontSize: 20.0,
                                                                fontFamily: 'Material',
                                                                fontWeight: FontWeight.bold),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 15,bottom: 9),
                                                            child: Container(
                                                              color: Color(0xffF20E15).withOpacity(0.25),
                                                              width: 187,

                                                              child: Text('現在完了・未来完了',//todo 文字数制限
                                                                overflow: TextOverflow.ellipsis,
                                                                style: TextStyle(
                                                                    fontSize: 20.0,
                                                                    color: Color(0xff707070),
                                                                    fontFamily: 'Material',
                                                                    fontWeight: FontWeight.bold),


                                                              ),
                                                            ), //beginner

                                                          ),//Beginner
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  color: Color(0xffF20E15).withOpacity(0.25),
                                                                  width: 187,
                                                                  height:30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                    child: Text('原則として進行形に',
                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Normal
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  width: 187,
                                                                  height: 30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                    child: Text('現在完了形のhave',

                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Super
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  color: Color(0xffA5FFBD).withOpacity(0.9),
                                                                  width: 187,
                                                                  height: 30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:1,left:4,bottom:1),
                                                                    child: Text('基本(現在・過去・未来)',
                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Hyper
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  color: Color(0xffFFA250).withOpacity(0.7),
                                                                  width: 187,
                                                                  height: 30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                    child: Text('進行形の用法',
                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Master
                                                          Padding(
                                                            padding: const EdgeInsets.only(bottom: 9),
                                                            child: Row(
                                                              children: <Widget>[
                                                                Container(
                                                                  color: Color(0xff6F6F6F).withOpacity(0.405),
                                                                  width: 187,
                                                                  height: 30,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(top:2,left:4,bottom: 4),
                                                                    child: Text('完了進行形(have been to)',
                                                                      style: TextStyle(
                                                                          fontSize: 20.0,
                                                                          color: Color(0xff707070),
                                                                          fontFamily: 'Material',
                                                                          fontWeight: FontWeight.bold),

                                                                    ),
                                                                  ),
                                                                ),

                                                              ],
                                                            ), //beginner

                                                          ),//Bad
                                                          //Bad
                                                        ],
                                                      ),
                                                      //width: 150,
                                                      //height: 200,
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),//学習進捗
                                  ),
                                ),
                                SizedBox(height:30.0),
                              ],
                            ),
                          ),



                        ],
                      ),

                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
