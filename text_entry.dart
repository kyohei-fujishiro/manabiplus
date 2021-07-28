import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:manabiplus/home_screen.dart';
import 'package:manabiplus/sinup/user_info_page.dart';

import '../main.dart';

Future<void> main() async {
  // Fireabse初期化
  await Firebase.initializeApp();
  runApp(MyApp());
}


// void main() async {
//   // 初期化処理を追加
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//
//   runApp(MyApp());
// }

/* --- 省略 --- */

// ログイン画面用Widget
class TextEntryPage extends StatefulWidget {

  @override
  _TextEntryPageState createState() => _TextEntryPageState();
}

class _TextEntryPageState extends State<TextEntryPage> {

  // メッセージ表示用
  String textname = '';

  var pages = '';
  // 入力したメールアドレス・パスワード


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00FFD4).withOpacity(0.8),
        title: Center(
          child: const Text("学びPlus",
            style: TextStyle(
                fontSize: 35,
                color: Color(0xff707070),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body:Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'ネクステージ',
              ),
              onChanged: (text) {
                // TODO: ここで取得したtextを使う
                textname = text;
              },
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'ページ数を数字で入力　例：315',
              ),
              onChanged: (value) {
                // TODO: ここで取得したtextを使う
                pages = value;
              },
            ),

            ElevatedButton(
              child: Text('教材作成'),
              onPressed: () async {
                String uid  = FirebaseAuth.instance.currentUser.uid;
                await FirebaseFirestore.instance
                // ドキュメント作成
                    .collection('users')
                    .doc('uid')
                    .collection('text')
                    .doc('textid')
                    .set({'name': '$textname', 'ページ数': pages,});
              },
            ),
          ],
        ),
        width: double.infinity,
      ),
    );
  }
}


