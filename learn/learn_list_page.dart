import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manabiplus/learn/learn_page.dart';
import 'package:manabiplus/learn/learn_list_model.dart';
import 'package:manabiplus/text_entry.dart';

import 'package:provider/provider.dart';

// ignore: must_be_immutable
class LearnListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ChangeNotifierProvider<LearnListModel>(
          create: (_) => LearnListModel(),
          child: Consumer<LearnListModel>(builder: (context, model, child) {
            return Padding(
              padding: const EdgeInsets.only(top:15, left:13.0, right:8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "本日の学習内容",
                      style: TextStyle(fontSize: 30.0,
                          color: Color(0xff707070),
                          fontFamily: 'Material',
                          fontWeight:FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LearnPage(),
                          fullscreenDialog: true,
                        ),
                      );
                    },
                    child: Card(

                      child: Container(
                        width: 400,
                        height: 300,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                model.titles[0],
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Divider(color: Colors.grey, indent: 30, endIndent: 30, thickness: 3.0,),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10, right: 10, bottom: 10),
                                  child: Card(
                                    child: Container(
                                      width: 150,
                                      height: 200,
                                      color: Colors.white,
                                      child: Center(
                                        child: Text("No Image",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            model.pages[0],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                color: Color(0xff707070)),
                                          ),
                                          Text(
                                            model.units[0],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                color: Color(0xff707070)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            model.pages[1],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                color: Color(0xff707070)),
                                          ),
                                          Text(
                                            model.units[1],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                color: Color(0xff707070)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text(model.pages[2],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  color: Color(0xff707070))),
                                          Text(model.units[2],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  color: Color(0xff707070))),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text(model.pages[3],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  color: Color(0xff707070))),
                                          Text(model.units[3],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  color: Color(0xff707070))
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text(model.pages[4],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  color: Color(0xff707070))),
                                          Text(model.units[4],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  color: Color(0xff707070))),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 400,
                      height: 257,
                      child: Column(
                        children: <Widget>[
                          Text(
                            "NextSatage",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 10, right: 10, bottom: 10),
                                child: Card(
                                  child: Container(
                                    width: 150,
                                    height: 200,
                                    color: Colors.white,
                                    child: Text("No Image",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                  ),
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 400,
                      height: 257,
                      child: Column(
                        children: <Widget>[
                          Text(
                            "NextSatage",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 10, right: 10, bottom: 10),
                                child: Card(
                                  child: Container(
                                    width: 150,
                                    height: 200,
                                    color: Colors.white,
                                    child: Text("No Image",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                  ),
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 400,
                      height: 257,
                      child: Column(
                        children: <Widget>[
                          Text(
                            "NextSatage",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 10, right: 10, bottom: 10),
                                child: Card(
                                  child: Container(
                                    width: 150,
                                    height: 200,
                                    color: Colors.white,
                                    child: Text("No Image",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                  ),
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("P19"),
                                        Text("現在完了・未来完了"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) {
              return TextEntryPage();
            }),
          );
          // --- 省略 ---
        },
        child: Icon(Icons.add),

      ),
    );

  }
}




